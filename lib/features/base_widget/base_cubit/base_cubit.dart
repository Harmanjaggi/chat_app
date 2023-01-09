import 'package:chat_app/features/profile_page/data/repositories/profile_service.dart';
import 'package:chat_app/helper/local_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_state.dart';
part 'base_cubit.freezed.dart';

class BaseCubit extends Cubit<BaseState> {
  BaseCubit() : super(const BaseState(null , null, null)) {
    getData();
  }
  getData() async {
    try {
      String? uid = FirebaseAuth.instance.currentUser!.uid;
      String? userName = await LocalDatasource.getUserName();
      String? image = await ProfielService(uid: uid).openProfilePic();
      String? type = await ProfielService(uid: uid).getType();
      emit(BaseState(userName, image, type));
    } catch (e) {
      debugPrint(e.toString());
      emit(const BaseState(null, null, null));
    }
  }
}
