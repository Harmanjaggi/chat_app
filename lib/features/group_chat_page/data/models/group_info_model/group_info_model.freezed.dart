// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupInfoModel _$GroupInfoModelFromJson(Map<String, dynamic> json) {
  return _GroupInfoModel.fromJson(json);
}

/// @nodoc
mixin _$GroupInfoModel {
  String get groupId => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String get adminName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupInfoModelCopyWith<GroupInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupInfoModelCopyWith<$Res> {
  factory $GroupInfoModelCopyWith(
          GroupInfoModel value, $Res Function(GroupInfoModel) then) =
      _$GroupInfoModelCopyWithImpl<$Res, GroupInfoModel>;
  @useResult
  $Res call({String groupId, String groupName, String adminName});
}

/// @nodoc
class _$GroupInfoModelCopyWithImpl<$Res, $Val extends GroupInfoModel>
    implements $GroupInfoModelCopyWith<$Res> {
  _$GroupInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? groupName = null,
    Object? adminName = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_GroupInfoModelCopyWith<$Res>
    implements $GroupInfoModelCopyWith<$Res> {
  factory _$$_GroupInfoModelCopyWith(
          _$_GroupInfoModel value, $Res Function(_$_GroupInfoModel) then) =
      __$$_GroupInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupId, String groupName, String adminName});
}

/// @nodoc
class __$$_GroupInfoModelCopyWithImpl<$Res>
    extends _$GroupInfoModelCopyWithImpl<$Res, _$_GroupInfoModel>
    implements _$$_GroupInfoModelCopyWith<$Res> {
  __$$_GroupInfoModelCopyWithImpl(
      _$_GroupInfoModel _value, $Res Function(_$_GroupInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? groupName = null,
    Object? adminName = null,
  }) {
    return _then(_$_GroupInfoModel(
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
class _$_GroupInfoModel implements _GroupInfoModel {
  const _$_GroupInfoModel(
      {required this.groupId,
      required this.groupName,
      required this.adminName});

  factory _$_GroupInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_GroupInfoModelFromJson(json);

  @override
  final String groupId;
  @override
  final String groupName;
  @override
  final String adminName;

  @override
  String toString() {
    return 'GroupInfoModel(groupId: $groupId, groupName: $groupName, adminName: $adminName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupInfoModel &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, groupId, groupName, adminName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupInfoModelCopyWith<_$_GroupInfoModel> get copyWith =>
      __$$_GroupInfoModelCopyWithImpl<_$_GroupInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupInfoModelToJson(
      this,
    );
  }
}

abstract class _GroupInfoModel implements GroupInfoModel {
  const factory _GroupInfoModel(
      {required final String groupId,
      required final String groupName,
      required final String adminName}) = _$_GroupInfoModel;

  factory _GroupInfoModel.fromJson(Map<String, dynamic> json) =
      _$_GroupInfoModel.fromJson;

  @override
  String get groupId;
  @override
  String get groupName;
  @override
  String get adminName;
  @override
  @JsonKey(ignore: true)
  _$$_GroupInfoModelCopyWith<_$_GroupInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
