part of 'chatroom_tile_cubit.dart';

@freezed
class ChatroomTileState with _$ChatroomTileState {
  const factory ChatroomTileState(
    String? image,
    String? recentMessage,
    String? type,
  ) = ChatroomTile;
}
