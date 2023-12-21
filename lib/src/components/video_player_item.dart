import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends StatefulWidget {
  const VideoPlayerItem({
    Key? key,
    required this.videoPlayerController,
    required this.initializeVideoPlayerFuture,
    required this.textEditingController,
  }) : super(key: key);
  final VideoPlayerController videoPlayerController;
  final Future<void> initializeVideoPlayerFuture;
  final TextEditingController textEditingController;

  @override
  State<VideoPlayerItem> createState() => _VideoPlayerItemState();
}

class _VideoPlayerItemState extends State<VideoPlayerItem> {
  bool playing = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: widget.initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: TextFormField(
                    controller: widget.textEditingController,
                    decoration: const InputDecoration(labelText: 'title'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: AspectRatio(
                    aspectRatio: widget.videoPlayerController.value.aspectRatio,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        VideoPlayer(widget.videoPlayerController),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () async {
                                if (playing) {
                                  playing = false;

                                  await widget.videoPlayerController.pause();
                                } else {
                                  playing = true;

                                  await widget.videoPlayerController.play();
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
                                widget.videoPlayerController,
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
    );
  }

  @override
  void dispose() {
    super.dispose();
    widget.videoPlayerController.dispose();
  }
}
