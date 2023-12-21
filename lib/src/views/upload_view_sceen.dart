import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_assesment/src/data/remote/firebase_storage_service.dart';
import 'package:task_assesment/src/models/video_model.dart';
import 'package:task_assesment/src/utils/media_helper.dart';
import 'package:video_player/video_player.dart';

///
///We can also handle this page by statemanagement
///but due to shortage of time I am using only setState for now
///

class UploadViewVideoScreen extends StatefulWidget {
  const UploadViewVideoScreen(
      {Key? key, this.uploadOnly = false, this.videoModel})
      : super(key: key);
  final bool uploadOnly;
  final VideoModel? videoModel;

  @override
  State<UploadViewVideoScreen> createState() => _UploadViewVideoScreenState();
}

class _UploadViewVideoScreenState extends State<UploadViewVideoScreen> {
  File? _pickedVideo;
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;
  var playing = false;

  var isUploadingVideo = false;

  @override
  void initState() {
    super.initState();

    if (!widget.uploadOnly) {
      videoController =
          VideoPlayerController.networkUrl(Uri.parse(widget.videoModel!.url));
      initializeVideoPlayerFuture = videoController.initialize();
    }
  }

  @override
  void dispose() {
    videoController.dispose();
    super.dispose();
  }

  Future<void> pickVideo(ImageSource imageSource) async {
    final pickedFile = await MediaHelper.pickVideo(imageSource: imageSource);

    if (pickedFile != null) {
      _pickedVideo = pickedFile;
      videoController = VideoPlayerController.file(_pickedVideo!);
      initializeVideoPlayerFuture = videoController.initialize();

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          if (widget.uploadOnly)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                backgroundColor: Colors.white,
              ),
              onPressed: () async {
                if (_pickedVideo == null) {
                  showImagePicker(context);
                } else {
                  try {
                    isUploadingVideo = true;
                    setState(() {});

                    await FirebaseStorageService.uploadVideo(
                        _pickedVideo!, 'video');
                    isUploadingVideo = false;

                    setState(() {});
                    resetControls();
                    if (mounted) Navigator.pop(context);
                  } catch (e) {
                    isUploadingVideo = false;
                    setState(() {});
                  }
                }
              },
              child: Text(
                _pickedVideo != null ? 'Upload Video' : 'Pick Video',
                style: const TextStyle(color: Colors.black),
              ),
            ),
          const SizedBox(width: 10),
        ],
        title: Text(widget.uploadOnly ? 'Upload Video' : 'View Video'),
      ),
      body: _pickedVideo == null && widget.uploadOnly
          ? const Center(
              child: Text('Pick Video by pressing Button above'),
            )
          : Stack(
              children: [
                FutureBuilder(
                  future: initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(top: 20.0),
                            ),
                            Container(
                              padding: const EdgeInsets.all(20),
                              child: AspectRatio(
                                aspectRatio: videoController.value.aspectRatio,
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: <Widget>[
                                    VideoPlayer(videoController),
                                    Row(
                                      children: [
                                        TextButton(
                                          onPressed: () async {
                                            if (playing) {
                                              playing = false;

                                              await videoController.pause();
                                            } else {
                                              playing = true;

                                              await videoController.play();
                                            }
                                            setState(() {});
                                          },
                                          child: Icon(
                                            playing
                                                ? Icons.pause_rounded
                                                : Icons.play_arrow_rounded,
                                            color: Colors.blue,
                                          ),
                                        ),
                                        Expanded(
                                          child: VideoProgressIndicator(
                                            videoController,
                                            allowScrubbing: true,
                                            padding: const EdgeInsets.only(
                                              right: 20,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
                if (isUploadingVideo)
                  const Positioned.fill(
                      child: Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  )),
              ],
            ),
    );
  }

  void showImagePicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text(
                      'Photo library',
                      // 'Гэрэл зургийн номын сан'
                    ),
                    onTap: () {
                      pickVideo(ImageSource.gallery);

                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text(
                    'Camera',
                    // 'Камер'
                  ),
                  onTap: () {
                    pickVideo(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  void resetControls() {
    _pickedVideo = null;
    isUploadingVideo = false;
    playing = false;
    setState(() {});
  }
}
