part of 'chatroom_tile_cubit.dart';

@freezed
class ChatroomTileState with _$ChatroomTileState {
  const factory ChatroomTileState.initial() = ChatroomTileInitial;
  const factory ChatroomTileState.success(
    Stream? chatroomInfo,
    Stream? recentMessage,
  ) = ChatroomTileSuccess;
}
