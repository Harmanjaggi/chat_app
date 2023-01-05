part of 'search_group_bloc.dart';

@freezed
class SearchGroupEvent with _$SearchGroupEvent {
  const factory SearchGroupEvent(String query) = _SearchGroupEvent;
}
