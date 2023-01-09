import 'package:chat_app/features/chatroom_page/data/models/chatroom_model/chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/data/repository/private_db_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_chat_state.dart';
part 'chatroom_chat_cubit.freezed.dart';

class ChatroomChatCubit extends Cubit<ChatroomChatState> {
  ChatroomModel chatroom;
  ChatroomChatCubit(this.chatroom) : super(const ChatroomChatState.loading()) {
    getChatData();
  }
  getChatData() async {
    try {
      Stream<QuerySnapshot>? chats =
          await PrivateDBService().getChatRoomMessages(chatroom.chatroomId);
      emit(ChatroomChatState.success(chats));
    } catch (e) {
      emit(ChatroomChatState.failure(e));
    }
  }

  sendMessage(String message) {
    if (message.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        "message": message,
        "sender": chatroom.userName,
        "time": DateTime.now().millisecondsSinceEpoch,
      };

      PrivateDBService().addMessage(chatroom.chatroomId, chatMessageMap);
    }
  }
}
