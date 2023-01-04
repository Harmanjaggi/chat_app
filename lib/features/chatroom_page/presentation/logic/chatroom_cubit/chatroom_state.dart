part of 'chatroom_cubit.dart';

@freezed
class ChatroomState with _$ChatroomState {
  const factory ChatroomState.loading() = ChatroomLoading;
  const factory ChatroomState.success(Stream data) = ChatroomSuccess;
  const factory ChatroomState.failure(dynamic e) = ChatroomFailure;
}
