part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.loading() = ChatLoading;
  const factory ChatState.success(Stream<QuerySnapshot> data) = ChatSuccess;
  const factory ChatState.failure(dynamic e) = ChatFailure;
}
