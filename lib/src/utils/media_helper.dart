import 'dart:io';
import 'dart:typed_data';
import 'package:image_picker/image_picker.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class MediaHelper {


  static Future<File?> pickVideo({required ImageSource imageSource}) async {
    XFile? pickedFile = await ImagePicker().pickVideo(source: imageSource);
    if (pickedFile != null) {
      return File(pickedFile.path);
    } else {
      return null;
    }
  }
}
