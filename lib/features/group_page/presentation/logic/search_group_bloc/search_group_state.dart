part of 'search_group_bloc.dart';

abstract class SearchGroupState extends Equatable {
  const SearchGroupState();

  @override
  List<Object> get props => [];
}

class SearchGroupInitial extends SearchGroupState {}

class SearchGroupSuccess extends SearchGroupState {
  final List<SearchTileModel> data;
  const SearchGroupSuccess(this.data);

  @override
  List<Object> get props => [data];
}

class SearchGroupLoading extends SearchGroupState {}

class SearchGroupError extends SearchGroupState {
  final dynamic error;
  const SearchGroupError(this.error);

  @override
  List<Object> get props => [error];
}
