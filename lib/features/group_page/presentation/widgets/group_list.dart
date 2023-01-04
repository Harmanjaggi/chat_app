import 'package:chat_app/features/components/chat_tile.dart';
import 'package:chat_app/features/group_chat_page/data/models/group_model/group_model.dart';
import 'package:chat_app/helper/helper_function.dart';
import 'package:chat_app/navigation/route.dart';
import 'package:go_router/go_router.dart';
import '../../../components/loading_screen.dart';
import 'package:flutter/material.dart';
import '../pages/group_page.dart';

class GroupList extends StatelessWidget {
  const GroupList(this.groups, {super.key});
  final Stream groups;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: groups,
      builder: (context, AsyncSnapshot snapshot) {
        // make some checks
        if (snapshot.hasData) {
          bool hasData = snapshot.data != null &&
              snapshot.data['groups'] != null &&
              snapshot.data['groups'].length != 0;
          if (hasData) {
            var ss = snapshot.data['groups'];
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ss.length,
              itemBuilder: (context, index) {
                int reverseIndex = ss.length - index - 1;
                GroupModel group = GroupModel(
                  groupId: HelperFunction.getId(ss[reverseIndex]),
                  groupName: HelperFunction.getName(ss[reverseIndex]),
                  userName: snapshot.data['fullName'],
                );
                return ChatTile(
                  title: group.groupName,
                  userName: group.userName,
                  onTap: () => context.push(
                    RouteGenerator.groupChatPageRoute,
                    extra: group,
                  ),
                );
              },
            );
          } else {
            return const NoGroupWidget();
          }
        } else {
          return const LoadingScreen();
        }
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
