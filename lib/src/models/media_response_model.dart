import 'package:freezed_annotation/freezed_annotation.dart';

part 'media_response_model.freezed.dart';

@Freezed(genericArgumentFactories: true)
class MediaResponse<T> with _$MediaResponse<T> {
  const factory MediaResponse.loading() = MediaResponseLoading;

  const factory MediaResponse.data(T data) = MediaResponseData;

  const factory MediaResponse.empty() = MediaResponseEmpty;

  const factory MediaResponse.error(String message) = MediaResponseError;
}
