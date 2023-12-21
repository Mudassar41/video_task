import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:task_assesment/src/components/video_player_item.dart';
import 'package:task_assesment/src/data/remote/firebase_storage_service.dart';
import 'package:task_assesment/src/models/video_model.dart';
import 'package:task_assesment/src/utils/awaiter.dart';
import 'package:task_assesment/src/utils/toast_messages.dart';
import 'package:task_assesment/src/view_model/media_view_model.dart';
import 'package:video_player/video_player.dart';

class UploadViewVideoScreen extends StatefulWidget {
  const UploadViewVideoScreen({
    Key? key,
    this.uploadOnly = false,
    this.videoModel,
    required this.mediaViewModel,
  }) : super(key: key);
  final bool uploadOnly;
  final VideoModel? videoModel;
  final MediaViewModel mediaViewModel;

  @override
  State<UploadViewVideoScreen> createState() => _UploadViewVideoScreenState();
}

class _UploadViewVideoScreenState extends State<UploadViewVideoScreen> {
  final mediaViewModel = MediaViewModel();
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (!widget.uploadOnly) {
      mediaViewModel.videoController =
          VideoPlayerController.networkUrl(Uri.parse(widget.videoModel!.url));
      mediaViewModel.initializeVideoPlayerFuture =
          mediaViewModel.videoController.initialize();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => mediaViewModel,
      child: Consumer<MediaViewModel>(
        builder: (context, state, child) {
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
                      if (state.pickedVideo == null) {
                        showImagePicker(context, state);
                      } else {
                        if (textEditingController.text.isEmpty) {
                          ToastMessages.showError('Add title');
                          return;
                        }
                        try {
                          await Awaiter.process(
                            future: FirebaseStorageService.uploadVideo(
                                state.pickedVideo!, 'video'),
                            context: context,
                            arguments: 'Uploading Video',
                          );
                          widget.mediaViewModel.setVideos(isRefresh: true);
                          ToastMessages.showSuccess('Uploaded');
                        } catch (e) {
                          ToastMessages.showError(e.toString());
                        }

                      }
                    },
                    child: Text(
                      state.pickedVideo != null ? 'Upload Video' : 'Pick Video',
                      style: const TextStyle(color: Colors.black),
                    ),
                  ),
                const SizedBox(width: 10),
              ],
              title: Text(widget.uploadOnly ? 'Upload Video' : 'View Video'),
            ),
            body: state.pickedVideo == null && widget.uploadOnly
                ? const Center(
                    child: Text('Pick Video by pressing Button above'),
                  )
                : VideoPlayerItem(
                    textEditingController: textEditingController,
                    videoPlayerController: state.videoController,
                    initializeVideoPlayerFuture:
                        state.initializeVideoPlayerFuture,
                  ),
          );
        },
      ),
    );
  }

  void showImagePicker(context, MediaViewModel state) {
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
                      state.pickVideo(ImageSource.gallery);

                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text(
                    'Camera',
                    // 'Камер'
                  ),
                  onTap: () {
                    state.pickVideo(ImageSource.camera);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
}
