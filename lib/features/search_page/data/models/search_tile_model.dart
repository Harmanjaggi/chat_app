import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_tile_model.freezed.dart';
part 'search_tile_model.g.dart';

@freezed
class SearchTileModel with _$SearchTileModel {
  const factory SearchTileModel({
    required String userName,
    required String groupId,
    required String groupName,
    required String adminName,
  }) = _SearchTileModel;

  factory SearchTileModel.fromJson(Map<String, dynamic> json) =>
      _$SearchTileModelFromJson(json);
}
