// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_chatroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchChatroomModel _$SearchChatroomModelFromJson(Map<String, dynamic> json) {
  return _SearchChatroomModel.fromJson(json);
}

/// @nodoc
mixin _$SearchChatroomModel {
  String get userName => throw _privateConstructorUsedError;
  String get chatroomName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchChatroomModelCopyWith<SearchChatroomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchChatroomModelCopyWith<$Res> {
  factory $SearchChatroomModelCopyWith(
          SearchChatroomModel value, $Res Function(SearchChatroomModel) then) =
      _$SearchChatroomModelCopyWithImpl<$Res, SearchChatroomModel>;
  @useResult
  $Res call({String userName, String chatroomName});
}

/// @nodoc
class _$SearchChatroomModelCopyWithImpl<$Res, $Val extends SearchChatroomModel>
    implements $SearchChatroomModelCopyWith<$Res> {
  _$SearchChatroomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? chatroomName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      chatroomName: null == chatroomName
          ? _value.chatroomName
          : chatroomName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchChatroomModelCopyWith<$Res>
    implements $SearchChatroomModelCopyWith<$Res> {
  factory _$$_SearchChatroomModelCopyWith(_$_SearchChatroomModel value,
          $Res Function(_$_SearchChatroomModel) then) =
      __$$_SearchChatroomModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String chatroomName});
}

/// @nodoc
class __$$_SearchChatroomModelCopyWithImpl<$Res>
    extends _$SearchChatroomModelCopyWithImpl<$Res, _$_SearchChatroomModel>
    implements _$$_SearchChatroomModelCopyWith<$Res> {
  __$$_SearchChatroomModelCopyWithImpl(_$_SearchChatroomModel _value,
      $Res Function(_$_SearchChatroomModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? chatroomName = null,
  }) {
    return _then(_$_SearchChatroomModel(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
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
class _$_SearchChatroomModel implements _SearchChatroomModel {
  const _$_SearchChatroomModel(
      {required this.userName, required this.chatroomName});

  factory _$_SearchChatroomModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchChatroomModelFromJson(json);

  @override
  final String userName;
  @override
  final String chatroomName;

  @override
  String toString() {
    return 'SearchChatroomModel(userName: $userName, chatroomName: $chatroomName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchChatroomModel &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.chatroomName, chatroomName) ||
                other.chatroomName == chatroomName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userName, chatroomName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchChatroomModelCopyWith<_$_SearchChatroomModel> get copyWith =>
      __$$_SearchChatroomModelCopyWithImpl<_$_SearchChatroomModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchChatroomModelToJson(
      this,
    );
  }
}

abstract class _SearchChatroomModel implements SearchChatroomModel {
  const factory _SearchChatroomModel(
      {required final String userName,
      required final String chatroomName}) = _$_SearchChatroomModel;

  factory _SearchChatroomModel.fromJson(Map<String, dynamic> json) =
      _$_SearchChatroomModel.fromJson;

  @override
  String get userName;
  @override
  String get chatroomName;
  @override
  @JsonKey(ignore: true)
  _$$_SearchChatroomModelCopyWith<_$_SearchChatroomModel> get copyWith =>
      throw _privateConstructorUsedError;
}
