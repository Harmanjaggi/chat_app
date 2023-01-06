part of 'search_group_cubit.dart';

@freezed
abstract class SearchGroupState with _$SearchGroupState {
  const factory SearchGroupState.initial() = SearchGroupInitial;
  const factory SearchGroupState.failure(dynamic e) = SearchGroupFailure;
  const factory SearchGroupState.success(List<SearchTileModel> datra) = SearchGroupSuccess;
}
