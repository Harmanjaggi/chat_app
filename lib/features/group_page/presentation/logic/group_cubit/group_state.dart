part of 'group_cubit.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState.loading() = GroupLoading;
  const factory GroupState.success(Stream groups) = GroupSuccess;
  const factory GroupState.failure(dynamic e) = GroupFailure;
}
