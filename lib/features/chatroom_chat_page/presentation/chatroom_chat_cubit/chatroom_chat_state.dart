part of 'chatroom_chat_cubit.dart';

@freezed
class ChatroomChatState with _$ChatroomChatState {
  const factory ChatroomChatState.loading() = ChatroomChatLoading;
  const factory ChatroomChatState.success(Stream<QuerySnapshot> data) = ChatroomChatSuccess;
  const factory ChatroomChatState.failure(dynamic e) = ChatroomChatFailure;
}
