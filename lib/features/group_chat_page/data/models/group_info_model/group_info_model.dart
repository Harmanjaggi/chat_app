import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_info_model.freezed.dart';
part 'group_info_model.g.dart';

@freezed
class GroupInfoModel with _$GroupInfoModel {
    const factory GroupInfoModel({
        required String groupId,
        required String groupName,
        required String adminName,
    }) = _GroupInfoModel;

    factory GroupInfoModel.fromJson(Map<String, dynamic> json) => _$GroupInfoModelFromJson(json);
}
