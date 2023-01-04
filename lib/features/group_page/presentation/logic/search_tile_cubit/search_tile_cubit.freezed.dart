// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_tile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchTileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isJoined) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isJoined)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isJoined)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchTileLoading value) loading,
    required TResult Function(SearchTileSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTileLoading value)? loading,
    TResult? Function(SearchTileSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTileLoading value)? loading,
    TResult Function(SearchTileSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTileStateCopyWith<$Res> {
  factory $SearchTileStateCopyWith(
          SearchTileState value, $Res Function(SearchTileState) then) =
      _$SearchTileStateCopyWithImpl<$Res, SearchTileState>;
}

/// @nodoc
class _$SearchTileStateCopyWithImpl<$Res, $Val extends SearchTileState>
    implements $SearchTileStateCopyWith<$Res> {
  _$SearchTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchTileLoadingCopyWith<$Res> {
  factory _$$SearchTileLoadingCopyWith(
          _$SearchTileLoading value, $Res Function(_$SearchTileLoading) then) =
      __$$SearchTileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchTileLoadingCopyWithImpl<$Res>
    extends _$SearchTileStateCopyWithImpl<$Res, _$SearchTileLoading>
    implements _$$SearchTileLoadingCopyWith<$Res> {
  __$$SearchTileLoadingCopyWithImpl(
      _$SearchTileLoading _value, $Res Function(_$SearchTileLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchTileLoading implements SearchTileLoading {
  const _$SearchTileLoading();

  @override
  String toString() {
    return 'SearchTileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchTileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isJoined) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isJoined)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isJoined)? success,
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
    required TResult Function(SearchTileLoading value) loading,
    required TResult Function(SearchTileSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTileLoading value)? loading,
    TResult? Function(SearchTileSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTileLoading value)? loading,
    TResult Function(SearchTileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchTileLoading implements SearchTileState {
  const factory SearchTileLoading() = _$SearchTileLoading;
}

/// @nodoc
abstract class _$$SearchTileSuccessCopyWith<$Res> {
  factory _$$SearchTileSuccessCopyWith(
          _$SearchTileSuccess value, $Res Function(_$SearchTileSuccess) then) =
      __$$SearchTileSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isJoined});
}

/// @nodoc
class __$$SearchTileSuccessCopyWithImpl<$Res>
    extends _$SearchTileStateCopyWithImpl<$Res, _$SearchTileSuccess>
    implements _$$SearchTileSuccessCopyWith<$Res> {
  __$$SearchTileSuccessCopyWithImpl(
      _$SearchTileSuccess _value, $Res Function(_$SearchTileSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isJoined = null,
  }) {
    return _then(_$SearchTileSuccess(
      null == isJoined
          ? _value.isJoined
          : isJoined // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SearchTileSuccess implements SearchTileSuccess {
  const _$SearchTileSuccess(this.isJoined);

  @override
  final bool isJoined;

  @override
  String toString() {
    return 'SearchTileState.success(isJoined: $isJoined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchTileSuccess &&
            (identical(other.isJoined, isJoined) ||
                other.isJoined == isJoined));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isJoined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchTileSuccessCopyWith<_$SearchTileSuccess> get copyWith =>
      __$$SearchTileSuccessCopyWithImpl<_$SearchTileSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(bool isJoined) success,
  }) {
    return success(isJoined);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(bool isJoined)? success,
  }) {
    return success?.call(isJoined);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(bool isJoined)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isJoined);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchTileLoading value) loading,
    required TResult Function(SearchTileSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchTileLoading value)? loading,
    TResult? Function(SearchTileSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchTileLoading value)? loading,
    TResult Function(SearchTileSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SearchTileSuccess implements SearchTileState {
  const factory SearchTileSuccess(final bool isJoined) = _$SearchTileSuccess;

  bool get isJoined;
  @JsonKey(ignore: true)
  _$$SearchTileSuccessCopyWith<_$SearchTileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
