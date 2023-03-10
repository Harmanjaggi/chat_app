// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authorized,
    required TResult Function(String? error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authorized,
    TResult? Function(String? error)? unathorized,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authorized,
    TResult Function(String? error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(UnAuthorized value) unathorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(UnAuthorized value)? unathorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(UnAuthorized value)? unathorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthorizedCopyWith<$Res> {
  factory _$$AuthorizedCopyWith(
          _$Authorized value, $Res Function(_$Authorized) then) =
      __$$AuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$AuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$Authorized>
    implements _$$AuthorizedCopyWith<$Res> {
  __$$AuthorizedCopyWithImpl(
      _$Authorized _value, $Res Function(_$Authorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$Authorized(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Authorized implements Authorized {
  const _$Authorized(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.authorized(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Authorized &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedCopyWith<_$Authorized> get copyWith =>
      __$$AuthorizedCopyWithImpl<_$Authorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authorized,
    required TResult Function(String? error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return authorized(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authorized,
    TResult? Function(String? error)? unathorized,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return authorized?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authorized,
    TResult Function(String? error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(UnAuthorized value) unathorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthInitial value) initial,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(UnAuthorized value)? unathorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthInitial value)? initial,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(UnAuthorized value)? unathorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class Authorized implements AuthState {
  const factory Authorized(final String token) = _$Authorized;

  String get token;
  @JsonKey(ignore: true)
  _$$AuthorizedCopyWith<_$Authorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnAuthorizedCopyWith<$Res> {
  factory _$$UnAuthorizedCopyWith(
          _$UnAuthorized value, $Res Function(_$UnAuthorized) then) =
      __$$UnAuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$UnAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnAuthorized>
    implements _$$UnAuthorizedCopyWith<$Res> {
  __$$UnAuthorizedCopyWithImpl(
      _$UnAuthorized _value, $Res Function(_$UnAuthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$UnAuthorized(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnAuthorized implements UnAuthorized {
  const _$UnAuthorized(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState.unathorized(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorized &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnAuthorizedCopyWith<_$UnAuthorized> get copyWith =>
      __$$UnAuthorizedCopyWithImpl<_$UnAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authorized,
    required TResult Function(String? error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return unathorized(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authorized,
    TResult? Function(String? error)? unathorized,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return unathorized?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authorized,
    TResult Function(String? error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(UnAuthorized value) unathorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthInitial value) initial,
  }) {
    return unathorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(UnAuthorized value)? unathorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthInitial value)? initial,
  }) {
    return unathorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(UnAuthorized value)? unathorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthorized implements AuthState {
  const factory UnAuthorized(final String? error) = _$UnAuthorized;

  String? get error;
  @JsonKey(ignore: true)
  _$$UnAuthorizedCopyWith<_$UnAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoadingCopyWith<$Res> {
  factory _$$AuthLoadingCopyWith(
          _$AuthLoading value, $Res Function(_$AuthLoading) then) =
      __$$AuthLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoading>
    implements _$$AuthLoadingCopyWith<$Res> {
  __$$AuthLoadingCopyWithImpl(
      _$AuthLoading _value, $Res Function(_$AuthLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoading implements AuthLoading {
  const _$AuthLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authorized,
    required TResult Function(String? error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authorized,
    TResult? Function(String? error)? unathorized,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authorized,
    TResult Function(String? error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(Authorized value) authorized,
    required TResult Function(UnAuthorized value) unathorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthInitial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(UnAuthorized value)? unathorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthInitial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(UnAuthorized value)? unathorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthLoading implements AuthState {
  const factory AuthLoading() = _$AuthLoading;
}

/// @nodoc
abstract class _$$AuthInitialCopyWith<$Res> {
  factory _$$AuthInitialCopyWith(
          _$AuthInitial value, $Res Function(_$AuthInitial) then) =
      __$$AuthInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitial>
    implements _$$AuthInitialCopyWith<$Res> {
  __$$AuthInitialCopyWithImpl(
      _$AuthInitial _value, $Res Function(_$AuthInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthInitial implements AuthInitial {
  const _$AuthInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String token) authorized,
    required TResult Function(String? error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String token)? authorized,
    TResult? Function(String? error)? unathorized,
    TResult? Function()? loading,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String token)? authorized,
    TResult Function(String? error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authorized value) authorized,
    required TResult Function(UnAuthorized value) unathorized,
    required TResult Function(AuthLoading value) loading,
    required TResult Function(AuthInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authorized value)? authorized,
    TResult? Function(UnAuthorized value)? unathorized,
    TResult? Function(AuthLoading value)? loading,
    TResult? Function(AuthInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authorized value)? authorized,
    TResult Function(UnAuthorized value)? unathorized,
    TResult Function(AuthLoading value)? loading,
    TResult Function(AuthInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthInitial implements AuthState {
  const factory AuthInitial() = _$AuthInitial;
}
