// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatroom_chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatroomChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<QuerySnapshot<Object?>> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<QuerySnapshot<Object?>> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<QuerySnapshot<Object?>> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatroomChatLoading value) loading,
    required TResult Function(ChatroomChatSuccess value) success,
    required TResult Function(ChatroomChatFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomChatLoading value)? loading,
    TResult? Function(ChatroomChatSuccess value)? success,
    TResult? Function(ChatroomChatFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomChatLoading value)? loading,
    TResult Function(ChatroomChatSuccess value)? success,
    TResult Function(ChatroomChatFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomChatStateCopyWith<$Res> {
  factory $ChatroomChatStateCopyWith(
          ChatroomChatState value, $Res Function(ChatroomChatState) then) =
      _$ChatroomChatStateCopyWithImpl<$Res, ChatroomChatState>;
}

/// @nodoc
class _$ChatroomChatStateCopyWithImpl<$Res, $Val extends ChatroomChatState>
    implements $ChatroomChatStateCopyWith<$Res> {
  _$ChatroomChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatroomChatLoadingCopyWith<$Res> {
  factory _$$ChatroomChatLoadingCopyWith(_$ChatroomChatLoading value,
          $Res Function(_$ChatroomChatLoading) then) =
      __$$ChatroomChatLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatroomChatLoadingCopyWithImpl<$Res>
    extends _$ChatroomChatStateCopyWithImpl<$Res, _$ChatroomChatLoading>
    implements _$$ChatroomChatLoadingCopyWith<$Res> {
  __$$ChatroomChatLoadingCopyWithImpl(
      _$ChatroomChatLoading _value, $Res Function(_$ChatroomChatLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatroomChatLoading implements ChatroomChatLoading {
  const _$ChatroomChatLoading();

  @override
  String toString() {
    return 'ChatroomChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatroomChatLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<QuerySnapshot<Object?>> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<QuerySnapshot<Object?>> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<QuerySnapshot<Object?>> data)? success,
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
    required TResult Function(ChatroomChatLoading value) loading,
    required TResult Function(ChatroomChatSuccess value) success,
    required TResult Function(ChatroomChatFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomChatLoading value)? loading,
    TResult? Function(ChatroomChatSuccess value)? success,
    TResult? Function(ChatroomChatFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomChatLoading value)? loading,
    TResult Function(ChatroomChatSuccess value)? success,
    TResult Function(ChatroomChatFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatroomChatLoading implements ChatroomChatState {
  const factory ChatroomChatLoading() = _$ChatroomChatLoading;
}

/// @nodoc
abstract class _$$ChatroomChatSuccessCopyWith<$Res> {
  factory _$$ChatroomChatSuccessCopyWith(_$ChatroomChatSuccess value,
          $Res Function(_$ChatroomChatSuccess) then) =
      __$$ChatroomChatSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<QuerySnapshot<Object?>> data});
}

/// @nodoc
class __$$ChatroomChatSuccessCopyWithImpl<$Res>
    extends _$ChatroomChatStateCopyWithImpl<$Res, _$ChatroomChatSuccess>
    implements _$$ChatroomChatSuccessCopyWith<$Res> {
  __$$ChatroomChatSuccessCopyWithImpl(
      _$ChatroomChatSuccess _value, $Res Function(_$ChatroomChatSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChatroomChatSuccess(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
    ));
  }
}

/// @nodoc

class _$ChatroomChatSuccess implements ChatroomChatSuccess {
  const _$ChatroomChatSuccess(this.data);

  @override
  final Stream<QuerySnapshot<Object?>> data;

  @override
  String toString() {
    return 'ChatroomChatState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatroomChatSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatroomChatSuccessCopyWith<_$ChatroomChatSuccess> get copyWith =>
      __$$ChatroomChatSuccessCopyWithImpl<_$ChatroomChatSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<QuerySnapshot<Object?>> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<QuerySnapshot<Object?>> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<QuerySnapshot<Object?>> data)? success,
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
    required TResult Function(ChatroomChatLoading value) loading,
    required TResult Function(ChatroomChatSuccess value) success,
    required TResult Function(ChatroomChatFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomChatLoading value)? loading,
    TResult? Function(ChatroomChatSuccess value)? success,
    TResult? Function(ChatroomChatFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomChatLoading value)? loading,
    TResult Function(ChatroomChatSuccess value)? success,
    TResult Function(ChatroomChatFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatroomChatSuccess implements ChatroomChatState {
  const factory ChatroomChatSuccess(final Stream<QuerySnapshot<Object?>> data) =
      _$ChatroomChatSuccess;

  Stream<QuerySnapshot<Object?>> get data;
  @JsonKey(ignore: true)
  _$$ChatroomChatSuccessCopyWith<_$ChatroomChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatroomChatFailureCopyWith<$Res> {
  factory _$$ChatroomChatFailureCopyWith(_$ChatroomChatFailure value,
          $Res Function(_$ChatroomChatFailure) then) =
      __$$ChatroomChatFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$ChatroomChatFailureCopyWithImpl<$Res>
    extends _$ChatroomChatStateCopyWithImpl<$Res, _$ChatroomChatFailure>
    implements _$$ChatroomChatFailureCopyWith<$Res> {
  __$$ChatroomChatFailureCopyWithImpl(
      _$ChatroomChatFailure _value, $Res Function(_$ChatroomChatFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$ChatroomChatFailure(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChatroomChatFailure implements ChatroomChatFailure {
  const _$ChatroomChatFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'ChatroomChatState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatroomChatFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatroomChatFailureCopyWith<_$ChatroomChatFailure> get copyWith =>
      __$$ChatroomChatFailureCopyWithImpl<_$ChatroomChatFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<QuerySnapshot<Object?>> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<QuerySnapshot<Object?>> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<QuerySnapshot<Object?>> data)? success,
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
    required TResult Function(ChatroomChatLoading value) loading,
    required TResult Function(ChatroomChatSuccess value) success,
    required TResult Function(ChatroomChatFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatroomChatLoading value)? loading,
    TResult? Function(ChatroomChatSuccess value)? success,
    TResult? Function(ChatroomChatFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatroomChatLoading value)? loading,
    TResult Function(ChatroomChatSuccess value)? success,
    TResult Function(ChatroomChatFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatroomChatFailure implements ChatroomChatState {
  const factory ChatroomChatFailure(final dynamic e) = _$ChatroomChatFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$ChatroomChatFailureCopyWith<_$ChatroomChatFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
