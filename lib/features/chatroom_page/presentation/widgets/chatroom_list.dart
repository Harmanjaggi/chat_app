import 'package:chat_app/features/chatroom_page/data/models/chatroom_model/chatroom_model.dart';
import 'package:chat_app/features/components/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../helper/helper_function.dart';
import '../../../../navigation/route.dart';

class ChatroomList extends StatelessWidget {
  const ChatroomList(this.chatrooms, {super.key});
  final Stream chatrooms;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: chatrooms,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          bool hasData = snapshot.data != null &&
              snapshot.data['chatrooms'] != null &&
              snapshot.data['chatrooms'].length != 0;
          if (hasData) {
            var ss = snapshot.data['chatrooms'];
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ss.length,
              itemBuilder: (context, index) {
                int reverseIndex = ss.length - index - 1;
                ChatroomModel chatroom = ChatroomModel(
                  chatroomId: HelperFunction.getId(ss[reverseIndex]),
                  chatroomName: HelperFunction.getName(ss[reverseIndex]),
                  userName: snapshot.data['fullName'],
                );
                return ChatTile(
                  title: chatroom.chatroomName,
                  userName: chatroom.userName,
                  onTap: () => context.push(
                    RouteGenerator.chatroomChatRoute,
                    extra: chatroom,
                  ),
                );
              },
            );
          } else {
            return const Text('No Data');
          }
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
