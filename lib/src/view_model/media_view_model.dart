import 'package:flutter/material.dart';
import 'package:task_assesment/src/data/remote/firebase_storage_service.dart';
import 'package:task_assesment/src/models/media_response_model.dart';
import 'package:task_assesment/src/models/video_model.dart';

class MediaViewModel extends ChangeNotifier {
  MediaResponse<List<VideoModel>> videosResponse =
      const MediaResponse.loading();

  Future<void> setVideos() async {
    try {
      final response = await FirebaseStorageService.fetchVideos();
      if (response.isEmpty) {
        videosResponse = const MediaResponse.empty();
      } else {
        videosResponse = MediaResponse.data(response);
      }
    } catch (e) {
      videosResponse = MediaResponse.error(e.toString());
    }

    notifyListeners();
  }
}
