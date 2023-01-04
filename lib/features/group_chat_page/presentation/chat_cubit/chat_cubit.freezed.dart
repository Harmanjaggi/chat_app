// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
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
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatSuccess value) success,
    required TResult Function(ChatFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatSuccess value)? success,
    TResult? Function(ChatFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatSuccess value)? success,
    TResult Function(ChatFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChatLoadingCopyWith<$Res> {
  factory _$$ChatLoadingCopyWith(
          _$ChatLoading value, $Res Function(_$ChatLoading) then) =
      __$$ChatLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChatLoadingCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatLoading>
    implements _$$ChatLoadingCopyWith<$Res> {
  __$$ChatLoadingCopyWithImpl(
      _$ChatLoading _value, $Res Function(_$ChatLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChatLoading implements ChatLoading {
  const _$ChatLoading();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatLoading);
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
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatSuccess value) success,
    required TResult Function(ChatFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatSuccess value)? success,
    TResult? Function(ChatFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatSuccess value)? success,
    TResult Function(ChatFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChatLoading implements ChatState {
  const factory ChatLoading() = _$ChatLoading;
}

/// @nodoc
abstract class _$$ChatSuccessCopyWith<$Res> {
  factory _$$ChatSuccessCopyWith(
          _$ChatSuccess value, $Res Function(_$ChatSuccess) then) =
      __$$ChatSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<QuerySnapshot<Object?>> data});
}

/// @nodoc
class __$$ChatSuccessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatSuccess>
    implements _$$ChatSuccessCopyWith<$Res> {
  __$$ChatSuccessCopyWithImpl(
      _$ChatSuccess _value, $Res Function(_$ChatSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChatSuccess(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Stream<QuerySnapshot<Object?>>,
    ));
  }
}

/// @nodoc

class _$ChatSuccess implements ChatSuccess {
  const _$ChatSuccess(this.data);

  @override
  final Stream<QuerySnapshot<Object?>> data;

  @override
  String toString() {
    return 'ChatState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSuccessCopyWith<_$ChatSuccess> get copyWith =>
      __$$ChatSuccessCopyWithImpl<_$ChatSuccess>(this, _$identity);

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
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatSuccess value) success,
    required TResult Function(ChatFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatSuccess value)? success,
    TResult? Function(ChatFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatSuccess value)? success,
    TResult Function(ChatFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChatSuccess implements ChatState {
  const factory ChatSuccess(final Stream<QuerySnapshot<Object?>> data) =
      _$ChatSuccess;

  Stream<QuerySnapshot<Object?>> get data;
  @JsonKey(ignore: true)
  _$$ChatSuccessCopyWith<_$ChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChatFailureCopyWith<$Res> {
  factory _$$ChatFailureCopyWith(
          _$ChatFailure value, $Res Function(_$ChatFailure) then) =
      __$$ChatFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$ChatFailureCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ChatFailure>
    implements _$$ChatFailureCopyWith<$Res> {
  __$$ChatFailureCopyWithImpl(
      _$ChatFailure _value, $Res Function(_$ChatFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$ChatFailure(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ChatFailure implements ChatFailure {
  const _$ChatFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'ChatState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatFailureCopyWith<_$ChatFailure> get copyWith =>
      __$$ChatFailureCopyWithImpl<_$ChatFailure>(this, _$identity);

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
    required TResult Function(ChatLoading value) loading,
    required TResult Function(ChatSuccess value) success,
    required TResult Function(ChatFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatLoading value)? loading,
    TResult? Function(ChatSuccess value)? success,
    TResult? Function(ChatFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatLoading value)? loading,
    TResult Function(ChatSuccess value)? success,
    TResult Function(ChatFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ChatFailure implements ChatState {
  const factory ChatFailure(final dynamic e) = _$ChatFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$ChatFailureCopyWith<_$ChatFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
