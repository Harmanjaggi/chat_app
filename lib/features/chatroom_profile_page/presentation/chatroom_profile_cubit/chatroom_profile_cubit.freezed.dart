// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatroom_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatroomProfileState {
  ProfileModel? get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatroomProfileStateCopyWith<ChatroomProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomProfileStateCopyWith<$Res> {
  factory $ChatroomProfileStateCopyWith(ChatroomProfileState value,
          $Res Function(ChatroomProfileState) then) =
      _$ChatroomProfileStateCopyWithImpl<$Res, ChatroomProfileState>;
  @useResult
  $Res call({ProfileModel? data});

  $ProfileModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChatroomProfileStateCopyWithImpl<$Res,
        $Val extends ChatroomProfileState>
    implements $ChatroomProfileStateCopyWith<$Res> {
  _$ChatroomProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatroomProfileInitialCopyWith<$Res>
    implements $ChatroomProfileStateCopyWith<$Res> {
  factory _$$ChatroomProfileInitialCopyWith(_$ChatroomProfileInitial value,
          $Res Function(_$ChatroomProfileInitial) then) =
      __$$ChatroomProfileInitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProfileModel? data});

  @override
  $ProfileModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChatroomProfileInitialCopyWithImpl<$Res>
    extends _$ChatroomProfileStateCopyWithImpl<$Res, _$ChatroomProfileInitial>
    implements _$$ChatroomProfileInitialCopyWith<$Res> {
  __$$ChatroomProfileInitialCopyWithImpl(_$ChatroomProfileInitial _value,
      $Res Function(_$ChatroomProfileInitial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChatroomProfileInitial(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileModel?,
    ));
  }
}

/// @nodoc

class _$ChatroomProfileInitial implements ChatroomProfileInitial {
  const _$ChatroomProfileInitial(this.data);

  @override
  final ProfileModel? data;

  @override
  String toString() {
    return 'ChatroomProfileState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatroomProfileInitial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatroomProfileInitialCopyWith<_$ChatroomProfileInitial> get copyWith =>
      __$$ChatroomProfileInitialCopyWithImpl<_$ChatroomProfileInitial>(
          this, _$identity);
}

abstract class ChatroomProfileInitial implements ChatroomProfileState {
  const factory ChatroomProfileInitial(final ProfileModel? data) =
      _$ChatroomProfileInitial;

  @override
  ProfileModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChatroomProfileInitialCopyWith<_$ChatroomProfileInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
