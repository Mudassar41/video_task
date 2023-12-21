import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:task_assesment/src/models/video_model.dart';
import 'package:task_assesment/src/utils/media_helper.dart';

class FirebaseStorageService {
  static Future<List<VideoModel>> fetchVideos() async {
    try {
      List<VideoModel> videos = [];
      final response = await FirebaseStorage.instance.ref('Videos').listAll();

      for (final Reference item in response.items) {
        final String url = await item.getDownloadURL();


        VideoModel videoModel = VideoModel(url: url, thumbnail: 'https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_640.jpg');

        videos.add(videoModel);
      }

      return videos;
    } catch (e) {
      rethrow;
    }
  }

  static Future<void> uploadVideo(File videoFile, String fileName) async {
    try {
      Reference storageReference = FirebaseStorage.instance
          .ref('Videos')
          .child(fileName + DateTime.now().toString());
      UploadTask uploadTask = storageReference.putFile(videoFile);
     TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() {});
    } catch (e) {
      rethrow;
    }
  }
}
