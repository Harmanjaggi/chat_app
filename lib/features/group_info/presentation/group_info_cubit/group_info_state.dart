part of 'group_info_cubit.dart';

@freezed
abstract class GroupInfoState with _$GroupInfoState {
  const factory GroupInfoState.loading() = GroupInfoLoading;
  const factory GroupInfoState.success(Stream data) = GroupInfoSuccess;
  const factory GroupInfoState.failure(dynamic e) = GroupInfoFailure;
}
