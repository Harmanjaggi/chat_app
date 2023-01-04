import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_model.freezed.dart';
part 'chatroom_model.g.dart';

@freezed
class ChatroomModel with _$ChatroomModel {
  const factory ChatroomModel({
    required String userName,
    required String chatroomId,
    required String chatroomName,
  }) = _ChatroomModel;

  factory ChatroomModel.fromJson(Map<String, dynamic> json) =>
      _$ChatroomModelFromJson(json);
}
