import 'package:chat_app/features/chatroom_page/presentation/widgets/chatroom_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/failiure_screen.dart';
import '../../../components/loading_screen.dart';
import '../../../group_page/presentation/widgets/base_widget.dart';
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
            child: ListView(
              children: [
                const ChatroomSearchBar(),
                state.when(
                  loading: () => const LoadingScreen(),
                  failure: (e) => FailureScreen(e),
                  success: (data) => ChatroomList(data),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
