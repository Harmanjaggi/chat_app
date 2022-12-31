import 'package:chat_app/helper/helper_function.dart';
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
      String? userName = await HelperFunctions.getUserName();
      DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
          .createGroup(
              userName ?? '', FirebaseAuth.instance.currentUser!.uid, groupName)
          .whenComplete(() {
        emit(const CreateGroupState.success());
      });
    } catch (e) {
      emit(CreateGroupState.failure(e));
    }
  }
}
