import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task_assesment/src/data/remote/firebase_storage_service.dart';
import 'package:task_assesment/src/models/media_response_model.dart';
import 'package:task_assesment/src/models/video_model.dart';
import 'package:task_assesment/src/utils/media_helper.dart';
import 'package:video_player/video_player.dart';

class MediaViewModel extends ChangeNotifier {
  File? pickedVideo;

  var playing = false;
  var uploading = false;
  late VideoPlayerController videoController;
  late Future<void> initializeVideoPlayerFuture;

  MediaResponse<List<VideoModel>> videosResponse =
      const MediaResponse.loading();

  ///
  Future<void> setVideos({bool isRefresh = false}) async {
    if (isRefresh) {
      videosResponse = const MediaResponse.loading();
    }
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

  ///
  Future<void> pickVideo(ImageSource imageSource) async {
    final pickedFile = await MediaHelper.pickVideo(imageSource: imageSource);

    if (pickedFile != null) {
      pickedVideo = pickedFile;
      videoController = VideoPlayerController.file(pickedVideo!);
      initializeVideoPlayerFuture = videoController.initialize();
      notifyListeners();
    }
  }

  ///
  void setUploading(bool value) {
    uploading = value;
    notifyListeners();
  }
}
