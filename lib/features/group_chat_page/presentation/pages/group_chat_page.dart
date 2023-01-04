import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/group_chat_page/data/models/group_model/group_model.dart';
import 'package:chat_app/features/group_chat_page/presentation/chat_cubit/chat_cubit.dart';
import 'package:chat_app/navigation/route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../components/chat_text_feild.dart';
import '../../../components/message_tile.dart';
import '../../data/models/group_info_model/group_info_model.dart';

class GroupChatPage extends StatelessWidget {
  final GroupModel group;
  const GroupChatPage(this.group, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(group),
      child: BlocBuilder<ChatCubit, ChatState>(
        builder: (context, state) {
          GroupInfoModel groupInfo = GroupInfoModel(
            groupId: group.groupId,
            groupName: group.groupName,
            adminName: context.read<ChatCubit>().admin,
          );
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text(group.groupName),
              backgroundColor: Theme.of(context).primaryColor,
              actions: [
                IconButton(
                  onPressed: () => context.push(
                    RouteGenerator.groupInfoRoute,
                    extra: groupInfo,
                  ),
                  icon: const Icon(Icons.info),
                )
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
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ChatTextFeild((data) {
                          context.read<ChatCubit>().sendMessage(data);
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
                      sentByMe: group.userName ==
                          snapshot.data.docs[index]['sender']);
                },
              )
            : Container();
      },
    );
  }
}
