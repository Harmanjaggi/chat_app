part of 'create_group_cubit.dart';

@freezed
class CreateGroupState with _$CreateGroupState {
  const factory CreateGroupState.initial() = CreateGroupInitial;
  const factory CreateGroupState.loading() = CreateGroupLoading;
  const factory CreateGroupState.success() = CreateGroupSuccess;
  const factory CreateGroupState.failure(dynamic e) = CreateGroupFailure;
}
