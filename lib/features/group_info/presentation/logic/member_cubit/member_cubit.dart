import 'package:chat_app/features/profile_page/data/repositories/profile_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_state.dart';
part 'member_cubit.freezed.dart';

class MemberCubit extends Cubit<MemberState> {
  String? uid;
  MemberCubit(this.uid) : super(const MemberState(null, null)) {
    getData();
  }
  getData() async {
    try {
      String? type = await ProfielService(uid: uid).getType();
      String? email = await ProfielService(uid: uid).getEmail();
      emit(MemberState(type, email));
    } catch (e) {
      debugPrint(e.toString());
      emit(const MemberState(null, null));
    }
  }
}
