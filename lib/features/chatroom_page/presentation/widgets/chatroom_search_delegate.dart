import 'package:chat_app/features/chatroom_page/presentation/widgets/search_chatroom_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logic/search_chatroom_cubit/search_chatroom_cubit.dart';

class ChatroomSearchDelegate extends SearchDelegate {
  final SearchChatroomCubit blocContext;
  ChatroomSearchDelegate(this.blocContext);
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          blocContext.getSearchedChatroom(query.trim());
        },
        icon: const Icon(Icons.search, size: 30),
      ),
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.close_sharp, size: 30),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back,
        size: 30,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<SearchChatroomCubit, SearchChatroomState>(
      bloc: blocContext,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: state.when(
            initial: () => Container(),
            failure: (e) => Container(),
            success: (data) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return SearchChatroomTile(data[index]);
                },
              );
            },
          ),
        );
      },
    );
  }
}
