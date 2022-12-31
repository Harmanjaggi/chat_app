// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeSuccess value) success,
    required TResult Function(HomeFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeSuccess value)? success,
    TResult? Function(HomeFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeSuccess value)? success,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeLoadingCopyWith<$Res> {
  factory _$$HomeLoadingCopyWith(
          _$HomeLoading value, $Res Function(_$HomeLoading) then) =
      __$$HomeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoading>
    implements _$$HomeLoadingCopyWith<$Res> {
  __$$HomeLoadingCopyWithImpl(
      _$HomeLoading _value, $Res Function(_$HomeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoading implements HomeLoading {
  const _$HomeLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoading);
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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeSuccess value) success,
    required TResult Function(HomeFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeSuccess value)? success,
    TResult? Function(HomeFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeSuccess value)? success,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeLoading implements HomeState {
  const factory HomeLoading() = _$HomeLoading;
}

/// @nodoc
abstract class _$$HomeSuccessCopyWith<$Res> {
  factory _$$HomeSuccessCopyWith(
          _$HomeSuccess value, $Res Function(_$HomeSuccess) then) =
      __$$HomeSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Stream<dynamic> groups});
}

/// @nodoc
class __$$HomeSuccessCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeSuccess>
    implements _$$HomeSuccessCopyWith<$Res> {
  __$$HomeSuccessCopyWithImpl(
      _$HomeSuccess _value, $Res Function(_$HomeSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groups = null,
  }) {
    return _then(_$HomeSuccess(
      null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as Stream<dynamic>,
    ));
  }
}

/// @nodoc

class _$HomeSuccess implements HomeSuccess {
  const _$HomeSuccess(this.groups);

  @override
  final Stream<dynamic> groups;

  @override
  String toString() {
    return 'HomeState.success(groups: $groups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccess &&
            (identical(other.groups, groups) || other.groups == groups));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groups);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessCopyWith<_$HomeSuccess> get copyWith =>
      __$$HomeSuccessCopyWithImpl<_$HomeSuccess>(this, _$identity);

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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeSuccess value) success,
    required TResult Function(HomeFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeSuccess value)? success,
    TResult? Function(HomeFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeSuccess value)? success,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeSuccess implements HomeState {
  const factory HomeSuccess(final Stream<dynamic> groups) = _$HomeSuccess;

  Stream<dynamic> get groups;
  @JsonKey(ignore: true)
  _$$HomeSuccessCopyWith<_$HomeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeFailureCopyWith<$Res> {
  factory _$$HomeFailureCopyWith(
          _$HomeFailure value, $Res Function(_$HomeFailure) then) =
      __$$HomeFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$HomeFailureCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeFailure>
    implements _$$HomeFailureCopyWith<$Res> {
  __$$HomeFailureCopyWithImpl(
      _$HomeFailure _value, $Res Function(_$HomeFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$HomeFailure(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$HomeFailure implements HomeFailure {
  const _$HomeFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'HomeState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFailureCopyWith<_$HomeFailure> get copyWith =>
      __$$HomeFailureCopyWithImpl<_$HomeFailure>(this, _$identity);

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
    required TResult Function(HomeLoading value) loading,
    required TResult Function(HomeSuccess value) success,
    required TResult Function(HomeFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeLoading value)? loading,
    TResult? Function(HomeSuccess value)? success,
    TResult? Function(HomeFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeLoading value)? loading,
    TResult Function(HomeSuccess value)? success,
    TResult Function(HomeFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeFailure implements HomeState {
  const factory HomeFailure(final dynamic e) = _$HomeFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$HomeFailureCopyWith<_$HomeFailure> get copyWith =>
      throw _privateConstructorUsedError;
}