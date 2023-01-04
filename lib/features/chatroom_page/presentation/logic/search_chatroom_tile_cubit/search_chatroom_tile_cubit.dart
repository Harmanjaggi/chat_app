import 'package:chat_app/features/chatroom_page/data/models/search_chatroom_model/search_chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/data/repository/private_db_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchChatroomTileCubit extends Cubit<bool?> {
  SearchChatroomModel chatroom;
  SearchChatroomTileCubit(this.chatroom) : super(null) {
    checkJoined();
  }
  String? uid;
  checkJoined() async {
    try {
      uid = FirebaseAuth.instance.currentUser!.uid;
      String chatroomId =
          chatRoomIdGenerator(chatroom.userName, chatroom.chatroomName);
      bool isJoined = await PrivateDBService(uid: uid)
          .isUserJoined(chatroom.chatroomName, chatroomId);
      emit(isJoined);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  createChatroom() async {
    try {
      String chatroomId =
          chatRoomIdGenerator(chatroom.userName, chatroom.chatroomName);
      Stream? createChatroom = await PrivateDBService(uid: uid)
          .createChatroom(chatroom.chatroomName, chatroomId);
      if (createChatroom != null) emit(true);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  chatRoomIdGenerator(String a, String b) {
    bool check = a.codeUnitAt(0) > b.codeUnitAt(0);
    return check ? "$b|$a" : "$a|$b";
  }
}
