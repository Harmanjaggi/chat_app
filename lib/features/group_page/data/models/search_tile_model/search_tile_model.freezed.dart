// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_tile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchTileModel _$SearchTileModelFromJson(Map<String, dynamic> json) {
  return _SearchTileModel.fromJson(json);
}

/// @nodoc
mixin _$SearchTileModel {
  String get userName => throw _privateConstructorUsedError;
  String get groupId => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String get adminName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTileModelCopyWith<SearchTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchTileModelCopyWith<$Res> {
  factory $SearchTileModelCopyWith(
          SearchTileModel value, $Res Function(SearchTileModel) then) =
      _$SearchTileModelCopyWithImpl<$Res, SearchTileModel>;
  @useResult
  $Res call(
      {String userName, String groupId, String groupName, String adminName});
}

/// @nodoc
class _$SearchTileModelCopyWithImpl<$Res, $Val extends SearchTileModel>
    implements $SearchTileModelCopyWith<$Res> {
  _$SearchTileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? groupId = null,
    Object? groupName = null,
    Object? adminName = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchTileModelCopyWith<$Res>
    implements $SearchTileModelCopyWith<$Res> {
  factory _$$_SearchTileModelCopyWith(
          _$_SearchTileModel value, $Res Function(_$_SearchTileModel) then) =
      __$$_SearchTileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName, String groupId, String groupName, String adminName});
}

/// @nodoc
class __$$_SearchTileModelCopyWithImpl<$Res>
    extends _$SearchTileModelCopyWithImpl<$Res, _$_SearchTileModel>
    implements _$$_SearchTileModelCopyWith<$Res> {
  __$$_SearchTileModelCopyWithImpl(
      _$_SearchTileModel _value, $Res Function(_$_SearchTileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? groupId = null,
    Object? groupName = null,
    Object? adminName = null,
  }) {
    return _then(_$_SearchTileModel(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchTileModel implements _SearchTileModel {
  const _$_SearchTileModel(
      {required this.userName,
      required this.groupId,
      required this.groupName,
      required this.adminName});

  factory _$_SearchTileModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchTileModelFromJson(json);

  @override
  final String userName;
  @override
  final String groupId;
  @override
  final String groupName;
  @override
  final String adminName;

  @override
  String toString() {
    return 'SearchTileModel(userName: $userName, groupId: $groupId, groupName: $groupName, adminName: $adminName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchTileModel &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, groupId, groupName, adminName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchTileModelCopyWith<_$_SearchTileModel> get copyWith =>
      __$$_SearchTileModelCopyWithImpl<_$_SearchTileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchTileModelToJson(
      this,
    );
  }
}

abstract class _SearchTileModel implements SearchTileModel {
  const factory _SearchTileModel(
      {required final String userName,
      required final String groupId,
      required final String groupName,
      required final String adminName}) = _$_SearchTileModel;

  factory _SearchTileModel.fromJson(Map<String, dynamic> json) =
      _$_SearchTileModel.fromJson;

  @override
  String get userName;
  @override
  String get groupId;
  @override
  String get groupName;
  @override
  String get adminName;
  @override
  @JsonKey(ignore: true)
  _$$_SearchTileModelCopyWith<_$_SearchTileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
