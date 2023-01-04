part of 'search_tile_cubit.dart';

@freezed
abstract class SearchTileState with _$SearchTileState {
  const factory SearchTileState.loading() = SearchTileLoading;
  const factory SearchTileState.success(bool isJoined) = SearchTileSuccess;
}
