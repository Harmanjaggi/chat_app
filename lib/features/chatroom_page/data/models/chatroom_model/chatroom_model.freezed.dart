// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatroomModel _$ChatroomModelFromJson(Map<String, dynamic> json) {
  return _ChatroomModel.fromJson(json);
}

/// @nodoc
mixin _$ChatroomModel {
  String get userName => throw _privateConstructorUsedError;
  String get chatroomId => throw _privateConstructorUsedError;
  String get chatroomName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatroomModelCopyWith<ChatroomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomModelCopyWith<$Res> {
  factory $ChatroomModelCopyWith(
          ChatroomModel value, $Res Function(ChatroomModel) then) =
      _$ChatroomModelCopyWithImpl<$Res, ChatroomModel>;
  @useResult
  $Res call({String userName, String chatroomId, String chatroomName});
}

/// @nodoc
class _$ChatroomModelCopyWithImpl<$Res, $Val extends ChatroomModel>
    implements $ChatroomModelCopyWith<$Res> {
  _$ChatroomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? chatroomId = null,
    Object? chatroomName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      chatroomId: null == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String,
      chatroomName: null == chatroomName
          ? _value.chatroomName
          : chatroomName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatroomModelCopyWith<$Res>
    implements $ChatroomModelCopyWith<$Res> {
  factory _$$_ChatroomModelCopyWith(
          _$_ChatroomModel value, $Res Function(_$_ChatroomModel) then) =
      __$$_ChatroomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String chatroomId, String chatroomName});
}

/// @nodoc
class __$$_ChatroomModelCopyWithImpl<$Res>
    extends _$ChatroomModelCopyWithImpl<$Res, _$_ChatroomModel>
    implements _$$_ChatroomModelCopyWith<$Res> {
  __$$_ChatroomModelCopyWithImpl(
      _$_ChatroomModel _value, $Res Function(_$_ChatroomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? chatroomId = null,
    Object? chatroomName = null,
  }) {
    return _then(_$_ChatroomModel(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      chatroomId: null == chatroomId
          ? _value.chatroomId
          : chatroomId // ignore: cast_nullable_to_non_nullable
              as String,
      chatroomName: null == chatroomName
          ? _value.chatroomName
          : chatroomName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatroomModel implements _ChatroomModel {
  const _$_ChatroomModel(
      {required this.userName,
      required this.chatroomId,
      required this.chatroomName});

  factory _$_ChatroomModel.fromJson(Map<String, dynamic> json) =>
      _$$_ChatroomModelFromJson(json);

  @override
  final String userName;
  @override
  final String chatroomId;
  @override
  final String chatroomName;

  @override
  String toString() {
    return 'ChatroomModel(userName: $userName, chatroomId: $chatroomId, chatroomName: $chatroomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatroomModel &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.chatroomId, chatroomId) ||
                other.chatroomId == chatroomId) &&
            (identical(other.chatroomName, chatroomName) ||
                other.chatroomName == chatroomName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, chatroomId, chatroomName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatroomModelCopyWith<_$_ChatroomModel> get copyWith =>
      __$$_ChatroomModelCopyWithImpl<_$_ChatroomModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatroomModelToJson(
      this,
    );
  }
}

abstract class _ChatroomModel implements ChatroomModel {
  const factory _ChatroomModel(
      {required final String userName,
      required final String chatroomId,
      required final String chatroomName}) = _$_ChatroomModel;

  factory _ChatroomModel.fromJson(Map<String, dynamic> json) =
      _$_ChatroomModel.fromJson;

  @override
  String get userName;
  @override
  String get chatroomId;
  @override
  String get chatroomName;
  @override
  @JsonKey(ignore: true)
  _$$_ChatroomModelCopyWith<_$_ChatroomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
