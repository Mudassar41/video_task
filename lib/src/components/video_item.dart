import 'package:flutter/material.dart';
import 'package:task_assesment/src/models/video_model.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({Key? key, required this.videoModel, required this.onPressed})
      : super(key: key);
  final VideoModel videoModel;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: MemoryImage(videoModel.thumbnail!),
                )),
          ),
          Positioned(
            right: 5,
            top: 5,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(), backgroundColor: Colors.blue),
                onPressed: onPressed,
                child: const Icon(
                  Icons.play_arrow_sharp,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
