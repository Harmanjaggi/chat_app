import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_chatroom_model.freezed.dart';
part 'search_chatroom_model.g.dart';

@freezed
class SearchChatroomModel with _$SearchChatroomModel {
  const factory SearchChatroomModel({
    required String userName,
    required String chatroomName,
    required String uid,
    required String email,
  }) = _SearchChatroomModel;

  factory SearchChatroomModel.fromJson(Map<String, dynamic> json) =>
      _$SearchChatroomModelFromJson(json);
}
