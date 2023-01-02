import 'package:chat_app/features/chat_page/data/models/group_model/group_model.dart';

import '../../../components/failiure_screen.dart';
import '../../../components/loading_screen.dart';
import '../logic/home_cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../components/group_tile.dart';
import '../pages/home_page.dart';

class GroupList extends StatelessWidget {
  const GroupList({super.key});
  @override
  Widget build(BuildContext context) {
    // string manipulation
    String getId(String res) {
      return res.substring(0, res.indexOf("_"));
    }

    String getName(String res) {
      return res.substring(res.indexOf("_") + 1);
    }

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.when(
          failure: (e) => FailureScreen(e),
          loading: () => const LoadingScreen(),
          success: (Stream<dynamic> groups) {
            return StreamBuilder(
              stream: context.read<HomeCubit>().groups,
              builder: (context, AsyncSnapshot snapshot) {
                // make some checks
                if (snapshot.hasData) {
                  if (snapshot.data['groups'] != null) {
                    if (snapshot.data['groups'].length != 0) {
                      return ListView.builder(
                        itemCount: snapshot.data['groups'].length,
                        itemBuilder: (context, index) {
                          int reverseIndex =
                              snapshot.data['groups'].length - index - 1;
                          return GroupTile(
                            GroupModel(
                              groupId: getId(
                                snapshot.data['groups'][reverseIndex],
                              ),
                              groupName: getName(
                                snapshot.data['groups'][reverseIndex],
                              ),
                              userName: snapshot.data['fullName'],
                            ),
                          );
                        },
                      );
                    } else {
                      return const NoGroupWidget();
                    }
                  } else {
                    return const NoGroupWidget();
                  }
                } else {
                  return const LoadingScreen();
                }
              },
            );
          },
        );
      },
    );
  }
}

class NoGroupWidget extends StatelessWidget {
  const NoGroupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              popUpDialog(context);
            },
            child: Icon(
              Icons.add_circle,
              color: Colors.grey[700],
              size: 75,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "You've not joined any groups, tap on the add icon to create a group or also search from top search button.",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
