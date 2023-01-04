import 'package:chat_app/features/group_chat_page/data/models/group_info_model/group_info_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../helper/helper_function.dart';
import '../../../group_page/data/repository/database_service.dart';

part 'group_info_state.dart';
part 'group_info_cubit.freezed.dart';

class GroupInfoCubit extends Cubit<GroupInfoState> {
  GroupInfoModel group;
  GroupInfoCubit(this.group) : super(const GroupInfoState.loading()) {
    getGroupInfo();
  }

  String? uid;

  getGroupInfo() async {
    try {
      uid = FirebaseAuth.instance.currentUser!.uid;
      Stream? data =
          await DatabaseService(uid: uid).getGroupMembers(group.groupId);
      data != null
          ? emit(GroupInfoState.success(data))
          : emit(const GroupInfoState.loading());
    } catch (e) {
      emit(GroupInfoState.failure(e));
    }
  }

  exitGroup() async {
    try {
      if (uid != null) uid = FirebaseAuth.instance.currentUser!.uid;
      await DatabaseService(uid: uid).toggleGroupJoin(group.groupId,
          HelperFunction.getName(group.adminName), group.groupName);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
