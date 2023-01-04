import 'package:chat_app/features/chatroom_chat_page/presentation/chatroom_chat_cubit/chatroom_chat_cubit.dart';
import 'package:chat_app/features/chatroom_page/data/models/chatroom_model/chatroom_model.dart';
import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../components/chat_text_feild.dart';
import '../../../components/message_tile.dart';

class ChatroomChatPage extends StatelessWidget {
  final ChatroomModel chatroom;
  const ChatroomChatPage(this.chatroom, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatroomChatCubit(chatroom),
      child: BlocBuilder<ChatroomChatCubit, ChatroomChatState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text(chatroom.chatroomName),
              backgroundColor: Theme.of(context).primaryColor,
            ),
            body: state.when(
                loading: () => const LoadingScreen(),
                failure: (e) => FailureScreen(e),
                success: (data) {
                  return Stack(
                    children: <Widget>[
                      // chat messages here
                      chatMessages(data),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ChatTextFeild((data) {
                          context.read<ChatroomChatCubit>().sendMessage(data);
                        }),
                      )
                    ],
                  );
                }),
          );
        },
      ),
    );
  }

  chatMessages(Stream<QuerySnapshot> data) {
    return StreamBuilder(
      stream: data,
      builder: (context, AsyncSnapshot snapshot) {
        return snapshot.hasData
            ? ListView.builder(
                itemCount: snapshot.data.docs.length,
                itemBuilder: (context, index) {
                  return MessageTile(
                      message: snapshot.data.docs[index]['message'],
                      sender: snapshot.data.docs[index]['sender'],
                      sentByMe: chatroom.userName ==
                          snapshot.data.docs[index]['sender']);
                },
              )
            : Container();
      },
    );
  }
}
