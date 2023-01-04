// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> groups) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> groups)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> groups)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupSuccess value) success,
    required TResult Function(GroupFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupLoading value)? loading,
    TResult? Function(GroupSuccess value)? success,
    TResult? Function(GroupFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupSuccess value)? success,
    TResult Function(GroupFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res, GroupState>;
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res, $Val extends GroupState>
    implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GroupLoadingCopyWith<$Res> {
  factory _$$GroupLoadingCopyWith(
          _$GroupLoading value, $Res Function(_$GroupLoading) then) =
      __$$GroupLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupLoadingCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupLoading>
    implements _$$GroupLoadingCopyWith<$Res> {
  __$$GroupLoadingCopyWithImpl(
      _$GroupLoading _value, $Res Function(_$GroupLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroupLoading implements GroupLoading {
  const _$GroupLoading();

  @override
  String toString() {
    return 'GroupState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GroupLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> groups) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> groups)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> groups)? success,
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
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupSuccess value) success,
    required TResult Function(GroupFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupLoading value)? loading,
    TResult? Function(GroupSuccess value)? success,
    TResult? Function(GroupFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupSuccess value)? success,
    TResult Function(GroupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GroupLoading implements GroupState {
  const factory GroupLoading() = _$GroupLoading;
}

/// @nodoc
abstract class _$$GroupSuccessCopyWith<$Res> {
  factory _$$GroupSuccessCopyWith(
          _$GroupSuccess value, $Res Function(_$GroupSuccess) then) =
      __$$GroupSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<dynamic> groups});
}

/// @nodoc
class __$$GroupSuccessCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupSuccess>
    implements _$$GroupSuccessCopyWith<$Res> {
  __$$GroupSuccessCopyWithImpl(
      _$GroupSuccess _value, $Res Function(_$GroupSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$GroupSuccess(
      null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>,
    ));
  }
}

/// @nodoc

class _$GroupSuccess implements GroupSuccess {
  const _$GroupSuccess(this.groups);

  @override
  final Stream<dynamic> groups;

  @override
  String toString() {
    return 'GroupState.success(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupSuccess &&
            (identical(other.groups, groups) || other.groups == groups));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groups);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupSuccessCopyWith<_$GroupSuccess> get copyWith =>
      __$$GroupSuccessCopyWithImpl<_$GroupSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> groups) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(groups);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> groups)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(groups);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> groups)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(groups);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupSuccess value) success,
    required TResult Function(GroupFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupLoading value)? loading,
    TResult? Function(GroupSuccess value)? success,
    TResult? Function(GroupFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupSuccess value)? success,
    TResult Function(GroupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GroupSuccess implements GroupState {
  const factory GroupSuccess(final Stream<dynamic> groups) = _$GroupSuccess;

  Stream<dynamic> get groups;
  @JsonKey(ignore: true)
  _$$GroupSuccessCopyWith<_$GroupSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupFailureCopyWith<$Res> {
  factory _$$GroupFailureCopyWith(
          _$GroupFailure value, $Res Function(_$GroupFailure) then) =
      __$$GroupFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$GroupFailureCopyWithImpl<$Res>
    extends _$GroupStateCopyWithImpl<$Res, _$GroupFailure>
    implements _$$GroupFailureCopyWith<$Res> {
  __$$GroupFailureCopyWithImpl(
      _$GroupFailure _value, $Res Function(_$GroupFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$GroupFailure(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$GroupFailure implements GroupFailure {
  const _$GroupFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'GroupState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupFailureCopyWith<_$GroupFailure> get copyWith =>
      __$$GroupFailureCopyWithImpl<_$GroupFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Stream<dynamic> groups) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Stream<dynamic> groups)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Stream<dynamic> groups)? success,
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
    required TResult Function(GroupLoading value) loading,
    required TResult Function(GroupSuccess value) success,
    required TResult Function(GroupFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GroupLoading value)? loading,
    TResult? Function(GroupSuccess value)? success,
    TResult? Function(GroupFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GroupLoading value)? loading,
    TResult Function(GroupSuccess value)? success,
    TResult Function(GroupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GroupFailure implements GroupState {
  const factory GroupFailure(final dynamic e) = _$GroupFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$GroupFailureCopyWith<_$GroupFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
