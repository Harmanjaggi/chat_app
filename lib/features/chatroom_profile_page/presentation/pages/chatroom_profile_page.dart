import 'package:chat_app/features/chatroom_profile_page/presentation/chatroom_profile_cubit/chatroom_profile_cubit.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../components/custom_image.dart';

class ChatroomProfilePage extends StatelessWidget {
  const ChatroomProfilePage(this.userName, {Key? key}) : super(key: key);
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chatroom Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => ChatroomProfileCubit(userName),
        child: BlocBuilder<ChatroomProfileCubit, ChatroomProfileState>(
          builder: (context, state) {
            return state.data != null
                ? ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 100,
                    ),
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade400,
                        radius: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CustomImage(
                            height: 200,
                            width: 200,
                            networkImage: state.data!.profilePic != ""
                                ? state.data!.profilePic
                                : null,
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Full Name",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            state.data!.userName ?? '',
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      const Divider(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            state.data!.email ?? '',
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      const Divider(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Type",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            state.data!.type != null && state.data!.type != ""
                                ? state.data!.type!
                                : "Not Mentioned",
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  )
                : const LoadingScreen();
          },
        ),
      ),
    );
  }
}
