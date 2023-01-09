part of 'member_cubit.dart';

@freezed
class MemberState with _$MemberState {
  const factory MemberState(String? type, String? email) = MemberInitial;
}
