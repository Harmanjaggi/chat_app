import 'package:chat_app/features/chat_page/data/models/group_model/group_model.dart';
import 'package:chat_app/features/chat_page/presentation/chat_cubit/chat_cubit.dart';
import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/message_tile.dart';
import '../../../components/widgets.dart';
import '../../data/models/group_info_model/group_info_model.dart';
import '../../../group_info/presentation/pages/group_info.dart';

class ChatPage extends StatelessWidget {
  final GroupModel group;
  const ChatPage(this.group, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    return BlocProvider(
      create: (context) => ChatCubit(group),
      child: BlocBuilder<ChatCubit, ChatState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: Text(group.groupName),
            backgroundColor: Theme.of(context).primaryColor,
            actions: [
              IconButton(
                  onPressed: () {
                    nextScreen(
                        context,
                        GroupInfo(GroupInfoModel(
                          groupId: group.groupId,
                          groupName: group.groupName,
                          adminName: context.read<ChatCubit>().admin,
                        )));
                  },
                  icon: const Icon(Icons.info))
            ],
          ),
          body: state.when(
              loading: () => const LoadingScreen(),
              failure: (e) => FailureScreen(e),
              success: (data) {
                return Stack(
                  children: <Widget>[
                    // chat messages here
                    chatMessages(data),
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey[700],
                        child: Row(children: [
                          Expanded(
                              child: TextFormField(
                            controller: messageController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              hintText: "Send a message...",
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 16),
                              border: InputBorder.none,
                            ),
                          )),
                          const SizedBox(width: 12),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<ChatCubit>()
                                  .sendMessage(messageController.text);
                              messageController.clear();
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Center(
                                  child: Icon(
                                Icons.send,
                                color: Colors.white,
                              )),
                            ),
                          )
                        ]),
                      ),
                    )
                  ],
                );
              }),
        );
      }),
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
                      sentByMe: group.userName ==
                          snapshot.data.docs[index]['sender']);
                },
              )
            : Container();
      },
    );
  }
}
