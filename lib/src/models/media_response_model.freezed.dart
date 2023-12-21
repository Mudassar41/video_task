// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaResponseLoading<T> value) loading,
    required TResult Function(MediaResponseData<T> value) data,
    required TResult Function(MediaResponseEmpty<T> value) empty,
    required TResult Function(MediaResponseError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaResponseLoading<T> value)? loading,
    TResult? Function(MediaResponseData<T> value)? data,
    TResult? Function(MediaResponseEmpty<T> value)? empty,
    TResult? Function(MediaResponseError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaResponseLoading<T> value)? loading,
    TResult Function(MediaResponseData<T> value)? data,
    TResult Function(MediaResponseEmpty<T> value)? empty,
    TResult Function(MediaResponseError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaResponseCopyWith<T, $Res> {
  factory $MediaResponseCopyWith(
          MediaResponse<T> value, $Res Function(MediaResponse<T>) then) =
      _$MediaResponseCopyWithImpl<T, $Res, MediaResponse<T>>;
}

/// @nodoc
class _$MediaResponseCopyWithImpl<T, $Res, $Val extends MediaResponse<T>>
    implements $MediaResponseCopyWith<T, $Res> {
  _$MediaResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MediaResponseLoadingImplCopyWith<T, $Res> {
  factory _$$MediaResponseLoadingImplCopyWith(
          _$MediaResponseLoadingImpl<T> value,
          $Res Function(_$MediaResponseLoadingImpl<T>) then) =
      __$$MediaResponseLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MediaResponseLoadingImplCopyWithImpl<T, $Res>
    extends _$MediaResponseCopyWithImpl<T, $Res, _$MediaResponseLoadingImpl<T>>
    implements _$$MediaResponseLoadingImplCopyWith<T, $Res> {
  __$$MediaResponseLoadingImplCopyWithImpl(_$MediaResponseLoadingImpl<T> _value,
      $Res Function(_$MediaResponseLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MediaResponseLoadingImpl<T> implements MediaResponseLoading<T> {
  const _$MediaResponseLoadingImpl();

  @override
  String toString() {
    return 'MediaResponse<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResponseLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaResponseLoading<T> value) loading,
    required TResult Function(MediaResponseData<T> value) data,
    required TResult Function(MediaResponseEmpty<T> value) empty,
    required TResult Function(MediaResponseError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaResponseLoading<T> value)? loading,
    TResult? Function(MediaResponseData<T> value)? data,
    TResult? Function(MediaResponseEmpty<T> value)? empty,
    TResult? Function(MediaResponseError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaResponseLoading<T> value)? loading,
    TResult Function(MediaResponseData<T> value)? data,
    TResult Function(MediaResponseEmpty<T> value)? empty,
    TResult Function(MediaResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MediaResponseLoading<T> implements MediaResponse<T> {
  const factory MediaResponseLoading() = _$MediaResponseLoadingImpl<T>;
}

/// @nodoc
abstract class _$$MediaResponseDataImplCopyWith<T, $Res> {
  factory _$$MediaResponseDataImplCopyWith(_$MediaResponseDataImpl<T> value,
          $Res Function(_$MediaResponseDataImpl<T>) then) =
      __$$MediaResponseDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$MediaResponseDataImplCopyWithImpl<T, $Res>
    extends _$MediaResponseCopyWithImpl<T, $Res, _$MediaResponseDataImpl<T>>
    implements _$$MediaResponseDataImplCopyWith<T, $Res> {
  __$$MediaResponseDataImplCopyWithImpl(_$MediaResponseDataImpl<T> _value,
      $Res Function(_$MediaResponseDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$MediaResponseDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MediaResponseDataImpl<T> implements MediaResponseData<T> {
  const _$MediaResponseDataImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'MediaResponse<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResponseDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaResponseDataImplCopyWith<T, _$MediaResponseDataImpl<T>>
      get copyWith =>
          __$$MediaResponseDataImplCopyWithImpl<T, _$MediaResponseDataImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaResponseLoading<T> value) loading,
    required TResult Function(MediaResponseData<T> value) data,
    required TResult Function(MediaResponseEmpty<T> value) empty,
    required TResult Function(MediaResponseError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaResponseLoading<T> value)? loading,
    TResult? Function(MediaResponseData<T> value)? data,
    TResult? Function(MediaResponseEmpty<T> value)? empty,
    TResult? Function(MediaResponseError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaResponseLoading<T> value)? loading,
    TResult Function(MediaResponseData<T> value)? data,
    TResult Function(MediaResponseEmpty<T> value)? empty,
    TResult Function(MediaResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class MediaResponseData<T> implements MediaResponse<T> {
  const factory MediaResponseData(final T data) = _$MediaResponseDataImpl<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$MediaResponseDataImplCopyWith<T, _$MediaResponseDataImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MediaResponseEmptyImplCopyWith<T, $Res> {
  factory _$$MediaResponseEmptyImplCopyWith(_$MediaResponseEmptyImpl<T> value,
          $Res Function(_$MediaResponseEmptyImpl<T>) then) =
      __$$MediaResponseEmptyImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MediaResponseEmptyImplCopyWithImpl<T, $Res>
    extends _$MediaResponseCopyWithImpl<T, $Res, _$MediaResponseEmptyImpl<T>>
    implements _$$MediaResponseEmptyImplCopyWith<T, $Res> {
  __$$MediaResponseEmptyImplCopyWithImpl(_$MediaResponseEmptyImpl<T> _value,
      $Res Function(_$MediaResponseEmptyImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MediaResponseEmptyImpl<T> implements MediaResponseEmpty<T> {
  const _$MediaResponseEmptyImpl();

  @override
  String toString() {
    return 'MediaResponse<$T>.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResponseEmptyImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaResponseLoading<T> value) loading,
    required TResult Function(MediaResponseData<T> value) data,
    required TResult Function(MediaResponseEmpty<T> value) empty,
    required TResult Function(MediaResponseError<T> value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaResponseLoading<T> value)? loading,
    TResult? Function(MediaResponseData<T> value)? data,
    TResult? Function(MediaResponseEmpty<T> value)? empty,
    TResult? Function(MediaResponseError<T> value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaResponseLoading<T> value)? loading,
    TResult Function(MediaResponseData<T> value)? data,
    TResult Function(MediaResponseEmpty<T> value)? empty,
    TResult Function(MediaResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class MediaResponseEmpty<T> implements MediaResponse<T> {
  const factory MediaResponseEmpty() = _$MediaResponseEmptyImpl<T>;
}

/// @nodoc
abstract class _$$MediaResponseErrorImplCopyWith<T, $Res> {
  factory _$$MediaResponseErrorImplCopyWith(_$MediaResponseErrorImpl<T> value,
          $Res Function(_$MediaResponseErrorImpl<T>) then) =
      __$$MediaResponseErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MediaResponseErrorImplCopyWithImpl<T, $Res>
    extends _$MediaResponseCopyWithImpl<T, $Res, _$MediaResponseErrorImpl<T>>
    implements _$$MediaResponseErrorImplCopyWith<T, $Res> {
  __$$MediaResponseErrorImplCopyWithImpl(_$MediaResponseErrorImpl<T> _value,
      $Res Function(_$MediaResponseErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MediaResponseErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MediaResponseErrorImpl<T> implements MediaResponseError<T> {
  const _$MediaResponseErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MediaResponse<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaResponseErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaResponseErrorImplCopyWith<T, _$MediaResponseErrorImpl<T>>
      get copyWith => __$$MediaResponseErrorImplCopyWithImpl<T,
          _$MediaResponseErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function() empty,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function()? empty,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function()? empty,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MediaResponseLoading<T> value) loading,
    required TResult Function(MediaResponseData<T> value) data,
    required TResult Function(MediaResponseEmpty<T> value) empty,
    required TResult Function(MediaResponseError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MediaResponseLoading<T> value)? loading,
    TResult? Function(MediaResponseData<T> value)? data,
    TResult? Function(MediaResponseEmpty<T> value)? empty,
    TResult? Function(MediaResponseError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MediaResponseLoading<T> value)? loading,
    TResult Function(MediaResponseData<T> value)? data,
    TResult Function(MediaResponseEmpty<T> value)? empty,
    TResult Function(MediaResponseError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MediaResponseError<T> implements MediaResponse<T> {
  const factory MediaResponseError(final String message) =
      _$MediaResponseErrorImpl<T>;

  String get message;
  @JsonKey(ignore: true)
  _$$MediaResponseErrorImplCopyWith<T, _$MediaResponseErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
