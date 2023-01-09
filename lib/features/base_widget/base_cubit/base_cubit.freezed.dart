// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BaseState {
  String? get userName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BaseStateCopyWith<BaseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseStateCopyWith<$Res> {
  factory $BaseStateCopyWith(BaseState value, $Res Function(BaseState) then) =
      _$BaseStateCopyWithImpl<$Res, BaseState>;
  @useResult
  $Res call({String? userName, String? image, String? type});
}

/// @nodoc
class _$BaseStateCopyWithImpl<$Res, $Val extends BaseState>
    implements $BaseStateCopyWith<$Res> {
  _$BaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseInitialCopyWith<$Res>
    implements $BaseStateCopyWith<$Res> {
  factory _$$BaseInitialCopyWith(
          _$BaseInitial value, $Res Function(_$BaseInitial) then) =
      __$$BaseInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userName, String? image, String? type});
}

/// @nodoc
class __$$BaseInitialCopyWithImpl<$Res>
    extends _$BaseStateCopyWithImpl<$Res, _$BaseInitial>
    implements _$$BaseInitialCopyWith<$Res> {
  __$$BaseInitialCopyWithImpl(
      _$BaseInitial _value, $Res Function(_$BaseInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$BaseInitial(
      freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BaseInitial implements BaseInitial {
  const _$BaseInitial(this.userName, this.image, this.type);

  @override
  final String? userName;
  @override
  final String? image;
  @override
  final String? type;

  @override
  String toString() {
    return 'BaseState(userName: $userName, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseInitial &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseInitialCopyWith<_$BaseInitial> get copyWith =>
      __$$BaseInitialCopyWithImpl<_$BaseInitial>(this, _$identity);
}

abstract class BaseInitial implements BaseState {
  const factory BaseInitial(
          final String? userName, final String? image, final String? type) =
      _$BaseInitial;

  @override
  String? get userName;
  @override
  String? get image;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$BaseInitialCopyWith<_$BaseInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
