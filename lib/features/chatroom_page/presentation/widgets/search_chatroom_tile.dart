import 'package:chat_app/features/chatroom_chat_page/presentation/pages/chatroom_chat_page.dart';
import 'package:chat_app/features/chatroom_page/data/models/chatroom_model/chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/data/models/search_chatroom_model/search_chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/presentation/logic/search_chatroom_tile_cubit/search_chatroom_tile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../components/widgets.dart';

class SearchChatroomTile extends StatelessWidget {
  const SearchChatroomTile(this.chatroom, {super.key});
  final SearchChatroomModel chatroom;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchChatroomTileCubit(chatroom),
      child: BlocBuilder<SearchChatroomTileCubit, bool?>(
        builder: (context, state) {
          var cubit = context.read<SearchChatroomTileCubit>();
          cubit.checkJoined(chatroom);
          onPressed() async {
            cubit.createChatroom(chatroom);
            if (!state!) {
              showSnackbar(
                context,
                Colors.green,
                "Successfully joined he group",
              );

              ChatroomModel chatroomData = ChatroomModel(
                userName: chatroom.userName,
                chatroomId: cubit.chatroomId!,
                chatroomName: chatroom.chatroomName,
              );
              Future.delayed(const Duration(seconds: 1), () {
                nextScreen(context, ChatroomChatPage(chatroomData));
              });
            } else {
              showSnackbar(
                context,
                Colors.red,
                "Left the group $chatroom",
              );
            }
          }

          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Theme.of(context).primaryColor,
              child: Text(
                chatroom.chatroomName.substring(0, 1).toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(vertical: 8),
            title: Text(
              '${chatroom.chatroomName} | $state',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(chatroom.email),
            onTap: onPressed,
          );
        },
      ),
    );
  }
}
