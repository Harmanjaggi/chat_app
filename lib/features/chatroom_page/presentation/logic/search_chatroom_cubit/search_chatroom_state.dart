part of 'search_chatroom_cubit.dart';

@freezed
abstract class SearchChatroomState with _$SearchChatroomState {
  const factory SearchChatroomState.initial() = SearchChatroomInitial;
  const factory SearchChatroomState.failure(dynamic e) = SearchChatroomFailure;
  const factory SearchChatroomState.success(List<SearchChatroomModel> datra) = SearchChatroomSuccess;
}
