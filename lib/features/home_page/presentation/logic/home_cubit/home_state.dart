part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.success(Stream groups) = HomeSuccess;
  const factory HomeState.failure(dynamic e) = HomeFailure;
}
