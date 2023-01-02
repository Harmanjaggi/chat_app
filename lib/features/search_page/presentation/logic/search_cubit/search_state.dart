part of 'search_cubit.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitial;
  const factory SearchState.loading() = SearchLoading;
  const factory SearchState.success(QuerySnapshot data) = SearchSuccess;
  const factory SearchState.failure(dynamic e) = SearchFailure;
}
