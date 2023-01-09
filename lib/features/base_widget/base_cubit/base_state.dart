part of 'base_cubit.dart';

@freezed
class BaseState with _$BaseState {
  const factory BaseState(
    String? userName,
    String? image,
    String? type,
  ) = BaseInitial;
}
