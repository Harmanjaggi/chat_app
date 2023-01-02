import 'package:chat_app/features/chat_page/data/models/group_info_model/group_info_model.dart';
import 'package:chat_app/features/group_info/presentation/group_info_cubit/group_info_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExitGroupDialogueBox extends StatelessWidget {
  const ExitGroupDialogueBox(this.group, {super.key});
  final GroupInfoModel group;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GroupInfoCubit(group),
      child: BlocBuilder<GroupInfoCubit, GroupInfoState>(
        builder: (context, state) {
          return AlertDialog(
            title: const Text("Exit"),
            content: const Text("Are you sure you exit the group? "),
            actions: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.cancel, color: Colors.red),
              ),
              IconButton(
                onPressed: () async {
                  context.read<GroupInfoCubit>().exitGroup();
                  // context.go(RouteGenerator.homeRoute);
                },
                icon: const Icon(Icons.done, color: Colors.green),
              ),
            ],
          );
        },
      ),
    );
  }
}
