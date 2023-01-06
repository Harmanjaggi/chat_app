import 'package:chat_app/features/chatroom_page/data/models/search_chatroom_model/search_chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/data/repository/private_db_service.dart';
import 'package:chat_app/helper/local_datasource.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchChatroomTileCubit extends Cubit<bool?> {
  SearchChatroomModel chatroom;
  SearchChatroomTileCubit(this.chatroom) : super(null) {
    checkJoined(chatroom);
  }
  String? uid, userName, userEmail, chatroomId;
  checkJoined(SearchChatroomModel chatroom) async {
    try {
      uid = FirebaseAuth.instance.currentUser!.uid;
      userName = await LocalDatasource.getUserName();
      userEmail = await LocalDatasource.getUserEmail();
      bool isJoined =
          await PrivateDBService(uid: uid).isUserJoined(chatroom.email);
      print('2=====$userEmail=${chatroom.email}===$state');
      emit(isJoined);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  createChatroom(SearchChatroomModel chatroom) async {
    try {
      final createChatroom = await PrivateDBService(uid: uid).createChatroom(
        userName1: userName!,
        userName2: chatroom.chatroomName,
        uid2: chatroom.uid,
        user1email: userEmail!,
        user2email: chatroom.email,
      );
      if (createChatroom != null) {
      chatroomId = createChatroom;
        emit(true);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
