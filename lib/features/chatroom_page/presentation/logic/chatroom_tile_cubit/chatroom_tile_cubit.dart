import 'package:chat_app/features/chatroom_page/data/repository/private_db_service.dart';
import 'package:chat_app/features/profile_page/data/repositories/profile_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_tile_state.dart';
part 'chatroom_tile_cubit.freezed.dart';

class ChatroomTileCubit extends Cubit<ChatroomTileState> {
  String email, chatroomId;
  ChatroomTileCubit(this.email, this.chatroomId)
      : super(const ChatroomTileState.initial()) {
    getChatroomData();
  }
  Stream? chatroomInfo;
  Stream? lastSeen;
  getChatroomData() async {
    try {
      String? uid = await ProfielService().getUid(email);
      chatroomInfo = await PrivateDBService(uid: uid).getChatRooms();
      lastSeen = await PrivateDBService().getRecentMessage(chatroomId);
      emit(ChatroomTileState.success(chatroomInfo, lastSeen));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
