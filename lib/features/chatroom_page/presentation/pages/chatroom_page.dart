import 'package:chat_app/features/chatroom_page/presentation/widgets/chatroom_search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/failiure_screen.dart';
import '../../../components/loading_screen.dart';
import '../../../base_widget/pages/base_widget.dart';
import '../logic/chatroom_cubit/chatroom_cubit.dart';
import '../logic/search_chatroom_cubit/search_chatroom_cubit.dart';
import '../widgets/chatroom_list.dart';

class ChatroomPage extends StatelessWidget {
  const ChatroomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChatroomCubit()),
        BlocProvider(create: (context) => SearchChatroomCubit()),
      ],
      child: BlocBuilder<ChatroomCubit, ChatroomState>(
        builder: (context, state) {
          return BaseWidget(
            'Chat Rooms',
            action: BlocProvider(
              create: (context) => SearchChatroomCubit(),
              child: BlocBuilder<SearchChatroomCubit, SearchChatroomState>(
                  builder: (context, state) {
                final searchBloc =
                    BlocProvider.of<SearchChatroomCubit>(context);
                return IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: ChatroomSearchDelegate(searchBloc),
                    );
                  },
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                );
              }),
            ),
            child: state.when(
                  loading: () => const LoadingScreen(),
                  failure: (e) => FailureScreen(e),
                  success: (data) => ChatroomList(data),
                ),
          );
        },
      ),
    );
  }
}
