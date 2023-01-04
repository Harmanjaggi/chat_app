// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatroom_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatroomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatroomLoading value) loading,
    required TResult Function(ChatroomSuccess value) success,
    required TResult Function(ChatroomFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomLoading value)? loading,
    TResult? Function(ChatroomSuccess value)? success,
    TResult? Function(ChatroomFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomLoading value)? loading,
    TResult Function(ChatroomSuccess value)? success,
    TResult Function(ChatroomFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomStateCopyWith<$Res> {
  factory $ChatroomStateCopyWith(
          ChatroomState value, $Res Function(ChatroomState) then) =
      _$ChatroomStateCopyWithImpl<$Res, ChatroomState>;
}

/// @nodoc
class _$ChatroomStateCopyWithImpl<$Res, $Val extends ChatroomState>
    implements $ChatroomStateCopyWith<$Res> {
  _$ChatroomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatroomLoadingCopyWith<$Res> {
  factory _$$ChatroomLoadingCopyWith(
          _$ChatroomLoading value, $Res Function(_$ChatroomLoading) then) =
      __$$ChatroomLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatroomLoadingCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res, _$ChatroomLoading>
    implements _$$ChatroomLoadingCopyWith<$Res> {
  __$$ChatroomLoadingCopyWithImpl(
      _$ChatroomLoading _value, $Res Function(_$ChatroomLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatroomLoading implements ChatroomLoading {
  const _$ChatroomLoading();

  @override
  String toString() {
    return 'ChatroomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatroomLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> data)? success,
    TResult Function(dynamic e)? failure,
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
    required TResult Function(ChatroomLoading value) loading,
    required TResult Function(ChatroomSuccess value) success,
    required TResult Function(ChatroomFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomLoading value)? loading,
    TResult? Function(ChatroomSuccess value)? success,
    TResult? Function(ChatroomFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomLoading value)? loading,
    TResult Function(ChatroomSuccess value)? success,
    TResult Function(ChatroomFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatroomLoading implements ChatroomState {
  const factory ChatroomLoading() = _$ChatroomLoading;
}

/// @nodoc
abstract class _$$ChatroomSuccessCopyWith<$Res> {
  factory _$$ChatroomSuccessCopyWith(
          _$ChatroomSuccess value, $Res Function(_$ChatroomSuccess) then) =
      __$$ChatroomSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<dynamic> data});
}

/// @nodoc
class __$$ChatroomSuccessCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res, _$ChatroomSuccess>
    implements _$$ChatroomSuccessCopyWith<$Res> {
  __$$ChatroomSuccessCopyWithImpl(
      _$ChatroomSuccess _value, $Res Function(_$ChatroomSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChatroomSuccess(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>,
    ));
  }
}

/// @nodoc

class _$ChatroomSuccess implements ChatroomSuccess {
  const _$ChatroomSuccess(this.data);

  @override
  final Stream<dynamic> data;

  @override
  String toString() {
    return 'ChatroomState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatroomSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatroomSuccessCopyWith<_$ChatroomSuccess> get copyWith =>
      __$$ChatroomSuccessCopyWithImpl<_$ChatroomSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatroomLoading value) loading,
    required TResult Function(ChatroomSuccess value) success,
    required TResult Function(ChatroomFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomLoading value)? loading,
    TResult? Function(ChatroomSuccess value)? success,
    TResult? Function(ChatroomFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomLoading value)? loading,
    TResult Function(ChatroomSuccess value)? success,
    TResult Function(ChatroomFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatroomSuccess implements ChatroomState {
  const factory ChatroomSuccess(final Stream<dynamic> data) = _$ChatroomSuccess;

  Stream<dynamic> get data;
  @JsonKey(ignore: true)
  _$$ChatroomSuccessCopyWith<_$ChatroomSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatroomFailureCopyWith<$Res> {
  factory _$$ChatroomFailureCopyWith(
          _$ChatroomFailure value, $Res Function(_$ChatroomFailure) then) =
      __$$ChatroomFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$ChatroomFailureCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res, _$ChatroomFailure>
    implements _$$ChatroomFailureCopyWith<$Res> {
  __$$ChatroomFailureCopyWithImpl(
      _$ChatroomFailure _value, $Res Function(_$ChatroomFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$ChatroomFailure(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChatroomFailure implements ChatroomFailure {
  const _$ChatroomFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'ChatroomState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatroomFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatroomFailureCopyWith<_$ChatroomFailure> get copyWith =>
      __$$ChatroomFailureCopyWithImpl<_$ChatroomFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatroomLoading value) loading,
    required TResult Function(ChatroomSuccess value) success,
    required TResult Function(ChatroomFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomLoading value)? loading,
    TResult? Function(ChatroomSuccess value)? success,
    TResult? Function(ChatroomFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomLoading value)? loading,
    TResult Function(ChatroomSuccess value)? success,
    TResult Function(ChatroomFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatroomFailure implements ChatroomState {
  const factory ChatroomFailure(final dynamic e) = _$ChatroomFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$ChatroomFailureCopyWith<_$ChatroomFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
