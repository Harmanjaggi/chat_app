// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MemberState {
  String? get type => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MemberStateCopyWith<MemberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberStateCopyWith<$Res> {
  factory $MemberStateCopyWith(
          MemberState value, $Res Function(MemberState) then) =
      _$MemberStateCopyWithImpl<$Res, MemberState>;
  @useResult
  $Res call({String? type, String? email});
}

/// @nodoc
class _$MemberStateCopyWithImpl<$Res, $Val extends MemberState>
    implements $MemberStateCopyWith<$Res> {
  _$MemberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemberInitialCopyWith<$Res>
    implements $MemberStateCopyWith<$Res> {
  factory _$$MemberInitialCopyWith(
          _$MemberInitial value, $Res Function(_$MemberInitial) then) =
      __$$MemberInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? email});
}

/// @nodoc
class __$$MemberInitialCopyWithImpl<$Res>
    extends _$MemberStateCopyWithImpl<$Res, _$MemberInitial>
    implements _$$MemberInitialCopyWith<$Res> {
  __$$MemberInitialCopyWithImpl(
      _$MemberInitial _value, $Res Function(_$MemberInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? email = freezed,
  }) {
    return _then(_$MemberInitial(
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MemberInitial implements MemberInitial {
  const _$MemberInitial(this.type, this.email);

  @override
  final String? type;
  @override
  final String? email;

  @override
  String toString() {
    return 'MemberState(type: $type, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemberInitial &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemberInitialCopyWith<_$MemberInitial> get copyWith =>
      __$$MemberInitialCopyWithImpl<_$MemberInitial>(this, _$identity);
}

abstract class MemberInitial implements MemberState {
  const factory MemberInitial(final String? type, final String? email) =
      _$MemberInitial;

  @override
  String? get type;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$MemberInitialCopyWith<_$MemberInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
