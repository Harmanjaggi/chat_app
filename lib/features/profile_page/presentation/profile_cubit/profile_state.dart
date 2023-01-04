part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.success(ProfileModel data, PlatformFile? image) = ProfileSuccess;
  const factory ProfileState.failure(dynamic e) = ProfileFailure;
}
