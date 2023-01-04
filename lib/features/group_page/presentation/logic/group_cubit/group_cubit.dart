import '../../../data/repository/database_service.dart';
import '../../../../../helper/local_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_state.dart';
part 'group_cubit.freezed.dart';

class GroupCubit extends Cubit<GroupState> {
  GroupCubit() : super(const GroupState.loading()) {
    getGroups();
  }
  String? email, userName, token;
  Stream? groups;

  getGroups() async {
    try {
      email = await LocalDatasource.getUserEmail();
      userName = await LocalDatasource.getUserName();
      token = await LocalDatasource.getUserToken();
      String? uid = FirebaseAuth.instance.currentUser!.uid;
      groups = await DatabaseService(uid: uid).getUserGroups();
      if (groups != null) {
        emit(GroupState.success(groups!));
      } else {
        emit(const GroupState.loading());
      }
    } catch (e) {
      emit(GroupState.failure(e));
    }
  }
}
