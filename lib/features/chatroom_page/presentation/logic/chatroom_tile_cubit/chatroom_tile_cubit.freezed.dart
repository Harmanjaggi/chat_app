// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatroom_tile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatroomTileState {
  String? get image => throw _privateConstructorUsedError;
  String? get recentMessage => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatroomTileStateCopyWith<ChatroomTileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomTileStateCopyWith<$Res> {
  factory $ChatroomTileStateCopyWith(
          ChatroomTileState value, $Res Function(ChatroomTileState) then) =
      _$ChatroomTileStateCopyWithImpl<$Res, ChatroomTileState>;
  @useResult
  $Res call({String? image, String? recentMessage, String? type});
}

/// @nodoc
class _$ChatroomTileStateCopyWithImpl<$Res, $Val extends ChatroomTileState>
    implements $ChatroomTileStateCopyWith<$Res> {
  _$ChatroomTileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? recentMessage = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      recentMessage: freezed == recentMessage
          ? _value.recentMessage
          : recentMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatroomTileCopyWith<$Res>
    implements $ChatroomTileStateCopyWith<$Res> {
  factory _$$ChatroomTileCopyWith(
          _$ChatroomTile value, $Res Function(_$ChatroomTile) then) =
      __$$ChatroomTileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? image, String? recentMessage, String? type});
}

/// @nodoc
class __$$ChatroomTileCopyWithImpl<$Res>
    extends _$ChatroomTileStateCopyWithImpl<$Res, _$ChatroomTile>
    implements _$$ChatroomTileCopyWith<$Res> {
  __$$ChatroomTileCopyWithImpl(
      _$ChatroomTile _value, $Res Function(_$ChatroomTile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? recentMessage = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ChatroomTile(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == recentMessage
          ? _value.recentMessage
          : recentMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ChatroomTile implements ChatroomTile {
  const _$ChatroomTile(this.image, this.recentMessage, this.type);

  @override
  final String? image;
  @override
  final String? recentMessage;
  @override
  final String? type;

  @override
  String toString() {
    return 'ChatroomTileState(image: $image, recentMessage: $recentMessage, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatroomTile &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.recentMessage, recentMessage) ||
                other.recentMessage == recentMessage) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, recentMessage, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatroomTileCopyWith<_$ChatroomTile> get copyWith =>
      __$$ChatroomTileCopyWithImpl<_$ChatroomTile>(this, _$identity);
}

abstract class ChatroomTile implements ChatroomTileState {
  const factory ChatroomTile(final String? image, final String? recentMessage,
      final String? type) = _$ChatroomTile;

  @override
  String? get image;
  @override
  String? get recentMessage;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$ChatroomTileCopyWith<_$ChatroomTile> get copyWith =>
      throw _privateConstructorUsedError;
}
