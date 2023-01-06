import 'package:chat_app/helper/local_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/private_db_service.dart';

part 'chatroom_state.dart';
part 'chatroom_cubit.freezed.dart';

class ChatroomCubit extends Cubit<ChatroomState> {
  ChatroomCubit() : super(const ChatroomState.loading()) {
    getChatroom();
  }
  String? userName;
  Stream? chatrooms;

  getChatroom() async {
    try {
      userName = await LocalDatasource.getUserName();
      String? uid = FirebaseAuth.instance.currentUser!.uid;
      chatrooms = await PrivateDBService(uid: uid).getChatRooms();
      chatrooms != null
          ? emit(ChatroomState.success(chatrooms!))
          : emit(const ChatroomState.loading());
    } catch (e) {
      emit(ChatroomState.failure(e));
    }
  }
}
