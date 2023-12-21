import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'video_model.freezed.dart';
// part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    String? thumbnail,
    required String url,
  }) = _VideoModel;

}
