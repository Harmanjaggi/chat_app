import 'package:chat_app/features/chat_page/data/models/group_model/group_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../home_page/data/repository/database_service.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  GroupModel group;
  ChatCubit(this.group) : super(const ChatState.loading()) {
    getChatData();
  }
  String admin = '';
  getChatData() async {
    try {
      admin = await DatabaseService().getGroupAdmin(group.groupId);
      Stream<QuerySnapshot>? chats =
          await DatabaseService().getChats(group.groupId);
      if (chats != null) {
        emit(ChatState.success(chats));
      } else {
        emit(const ChatState.loading());
      }
    } catch (e) {
      emit(ChatState.failure(e));
    }
  }

  sendMessage(String message) {
    if (message.isNotEmpty) {
      Map<String, dynamic> chatMessageMap = {
        "message": message,
        "sender": group.userName,
        "time": DateTime.now().millisecondsSinceEpoch,
      };

      DatabaseService().sendMessage(group.groupId, chatMessageMap);
    }
  }

  Future<String?> getAdmin() async {
    try {
      String admin = await DatabaseService().getGroupAdmin(group.groupId);
      return admin;
    } catch (e) {
      emit(ChatState.failure(e));
    }
  }
}
