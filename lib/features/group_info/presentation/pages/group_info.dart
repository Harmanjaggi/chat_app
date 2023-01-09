import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/group_chat_page/data/models/group_info_model/group_info_model.dart';
import 'package:chat_app/features/group_info/presentation/logic/group_info_cubit/group_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../helper/helper_function.dart';
import '../widgets/exit_group_dialogue_box.dart';
import '../widgets/member_list.dart';

class GroupInfo extends StatelessWidget {
  final GroupInfoModel groupInfo;
  const GroupInfo(this.groupInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GroupInfoCubit(groupInfo),
      child: BlocBuilder<GroupInfoCubit, GroupInfoState>(
          builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Theme.of(context).primaryColor,
            title: const Text("Group Info"),
            actions: [
              IconButton(
                onPressed: () async {
                  await showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) => ExitGroupDialogueBox(groupInfo),
                  );
                },
                icon: const Icon(Icons.exit_to_app),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).primaryColor.withOpacity(0.2)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.grey.shade400,
                          child: Text(
                            groupInfo.groupName.substring(0, 1).toUpperCase(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Group: ${groupInfo.groupName}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Admin: ${HelperFunction.getName(groupInfo.adminName)}",
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  state.when(
                    failure: (e) => FailureScreen(e),
                    loading: () => const LoadingScreen(),
                    success: (data) => MemberList(data),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
