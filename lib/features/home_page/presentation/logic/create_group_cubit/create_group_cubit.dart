import 'package:chat_app/helper/local_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/database_service.dart';

part 'create_group_state.dart';
part 'create_group_cubit.freezed.dart';

class CreateGroupCubit extends Cubit<CreateGroupState> {
  CreateGroupCubit() : super(const CreateGroupState.initial());

  createGroup(String groupName) async {
    emit(const CreateGroupState.loading());
    try {
      String? userName = await LocalDatasource.getUserName();
      String uid = FirebaseAuth.instance.currentUser!.uid;
      DatabaseService(uid: uid)
          .createGroup(userName!, uid, groupName)
          .whenComplete(() {
        emit(const CreateGroupState.success());
      });
    } catch (e) {
      emit(CreateGroupState.failure(e));
    }
  }
}
