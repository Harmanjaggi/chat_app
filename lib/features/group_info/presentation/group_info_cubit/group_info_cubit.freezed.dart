// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupInfoState {
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
    required TResult Function(GroupInfoLoading value) loading,
    required TResult Function(GroupInfoSuccess value) success,
    required TResult Function(GroupInfoFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInfoLoading value)? loading,
    TResult? Function(GroupInfoSuccess value)? success,
    TResult? Function(GroupInfoFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInfoLoading value)? loading,
    TResult Function(GroupInfoSuccess value)? success,
    TResult Function(GroupInfoFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupInfoStateCopyWith<$Res> {
  factory $GroupInfoStateCopyWith(
          GroupInfoState value, $Res Function(GroupInfoState) then) =
      _$GroupInfoStateCopyWithImpl<$Res, GroupInfoState>;
}

/// @nodoc
class _$GroupInfoStateCopyWithImpl<$Res, $Val extends GroupInfoState>
    implements $GroupInfoStateCopyWith<$Res> {
  _$GroupInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroupInfoLoadingCopyWith<$Res> {
  factory _$$GroupInfoLoadingCopyWith(
          _$GroupInfoLoading value, $Res Function(_$GroupInfoLoading) then) =
      __$$GroupInfoLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupInfoLoadingCopyWithImpl<$Res>
    extends _$GroupInfoStateCopyWithImpl<$Res, _$GroupInfoLoading>
    implements _$$GroupInfoLoadingCopyWith<$Res> {
  __$$GroupInfoLoadingCopyWithImpl(
      _$GroupInfoLoading _value, $Res Function(_$GroupInfoLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroupInfoLoading implements GroupInfoLoading {
  const _$GroupInfoLoading();

  @override
  String toString() {
    return 'GroupInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupInfoLoading);
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
    required TResult Function(GroupInfoLoading value) loading,
    required TResult Function(GroupInfoSuccess value) success,
    required TResult Function(GroupInfoFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInfoLoading value)? loading,
    TResult? Function(GroupInfoSuccess value)? success,
    TResult? Function(GroupInfoFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInfoLoading value)? loading,
    TResult Function(GroupInfoSuccess value)? success,
    TResult Function(GroupInfoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroupInfoLoading implements GroupInfoState {
  const factory GroupInfoLoading() = _$GroupInfoLoading;
}

/// @nodoc
abstract class _$$GroupInfoSuccessCopyWith<$Res> {
  factory _$$GroupInfoSuccessCopyWith(
          _$GroupInfoSuccess value, $Res Function(_$GroupInfoSuccess) then) =
      __$$GroupInfoSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<dynamic> data});
}

/// @nodoc
class __$$GroupInfoSuccessCopyWithImpl<$Res>
    extends _$GroupInfoStateCopyWithImpl<$Res, _$GroupInfoSuccess>
    implements _$$GroupInfoSuccessCopyWith<$Res> {
  __$$GroupInfoSuccessCopyWithImpl(
      _$GroupInfoSuccess _value, $Res Function(_$GroupInfoSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GroupInfoSuccess(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>,
    ));
  }
}

/// @nodoc

class _$GroupInfoSuccess implements GroupInfoSuccess {
  const _$GroupInfoSuccess(this.data);

  @override
  final Stream<dynamic> data;

  @override
  String toString() {
    return 'GroupInfoState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupInfoSuccess &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupInfoSuccessCopyWith<_$GroupInfoSuccess> get copyWith =>
      __$$GroupInfoSuccessCopyWithImpl<_$GroupInfoSuccess>(this, _$identity);

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
    required TResult Function(GroupInfoLoading value) loading,
    required TResult Function(GroupInfoSuccess value) success,
    required TResult Function(GroupInfoFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInfoLoading value)? loading,
    TResult? Function(GroupInfoSuccess value)? success,
    TResult? Function(GroupInfoFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInfoLoading value)? loading,
    TResult Function(GroupInfoSuccess value)? success,
    TResult Function(GroupInfoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GroupInfoSuccess implements GroupInfoState {
  const factory GroupInfoSuccess(final Stream<dynamic> data) =
      _$GroupInfoSuccess;

  Stream<dynamic> get data;
  @JsonKey(ignore: true)
  _$$GroupInfoSuccessCopyWith<_$GroupInfoSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupInfoFailureCopyWith<$Res> {
  factory _$$GroupInfoFailureCopyWith(
          _$GroupInfoFailure value, $Res Function(_$GroupInfoFailure) then) =
      __$$GroupInfoFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$GroupInfoFailureCopyWithImpl<$Res>
    extends _$GroupInfoStateCopyWithImpl<$Res, _$GroupInfoFailure>
    implements _$$GroupInfoFailureCopyWith<$Res> {
  __$$GroupInfoFailureCopyWithImpl(
      _$GroupInfoFailure _value, $Res Function(_$GroupInfoFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$GroupInfoFailure(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$GroupInfoFailure implements GroupInfoFailure {
  const _$GroupInfoFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'GroupInfoState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupInfoFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupInfoFailureCopyWith<_$GroupInfoFailure> get copyWith =>
      __$$GroupInfoFailureCopyWithImpl<_$GroupInfoFailure>(this, _$identity);

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
    required TResult Function(GroupInfoLoading value) loading,
    required TResult Function(GroupInfoSuccess value) success,
    required TResult Function(GroupInfoFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupInfoLoading value)? loading,
    TResult? Function(GroupInfoSuccess value)? success,
    TResult? Function(GroupInfoFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupInfoLoading value)? loading,
    TResult Function(GroupInfoSuccess value)? success,
    TResult Function(GroupInfoFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GroupInfoFailure implements GroupInfoState {
  const factory GroupInfoFailure(final dynamic e) = _$GroupInfoFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$GroupInfoFailureCopyWith<_$GroupInfoFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
