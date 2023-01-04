import 'package:chat_app/features/chatroom_page/data/models/chatroom_model/chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/data/models/search_chatroom_model/search_chatroom_model.dart';
import 'package:chat_app/features/chatroom_page/presentation/logic/search_chatroom_cubit/search_chatroom_cubit.dart';
import 'package:chat_app/features/chatroom_page/presentation/widgets/search_chatroom_tile.dart';
import 'package:chat_app/features/components/search_bar.dart';
import 'package:chat_app/helper/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatroomSearchBar extends StatelessWidget {
  const ChatroomSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BlocProvider(
      create: (context) => SearchChatroomCubit(),
      child: BlocBuilder<SearchChatroomCubit, QuerySnapshot?>(
        builder: (context, state) {
          final cubit = context.read<SearchChatroomCubit>();
          bool check = state != null && state.docs.isNotEmpty;
          return SearchBar(
            onSearch: (data) => cubit.getSearchedChatroom(data),
            list: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                constraints: const BoxConstraints(
                  maxHeight: 200,
                  minHeight: 50,
                ),
                width: double.infinity,
                decoration: kRoundedBottomContainer,
                child: check
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.docs.length,
                        itemBuilder: (context, index) {
                          var ss = state.docs[index];
                          SearchChatroomModel chatroom = SearchChatroomModel(
                            userName: cubit.userName ?? '',
                            chatroomName: ss['fullName'],
                          );
                          return SearchChatroomTile(chatroom);
                        },
                      )
                    : Text('No Data', style: theme.textTheme.bodyLarge),
              ),
            ),
          );
        },
      ),
    );
  }
}
