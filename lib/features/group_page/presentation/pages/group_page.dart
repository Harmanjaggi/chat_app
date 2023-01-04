import 'package:chat_app/features/components/custom_button.dart';
import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import '../logic/create_group_cubit/create_group_cubit.dart';
import '../logic/group_cubit/group_cubit.dart';
import '../widgets/base_widget.dart';
import '../widgets/create_group_dialogue_box.dart';
import '../widgets/group_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../components/widgets.dart';
import '../widgets/group_search_bar.dart';

String groupName = "";

class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GroupCubit(),
      child: BlocBuilder<GroupCubit, GroupState>(
        builder: (context, state) {
          return BaseWidget(
            'Groups',
            floatingActionButton: FloatingActionButton(
              onPressed: () => popUpDialog(context),
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
            child: ListView(
              children: [
                const GroupSearchBar(),
                const SizedBox(height: 16),
                state.when(
                  loading: () => const LoadingScreen(),
                  failure: (e) => FailureScreen(e),
                  success: (data) => GroupList(data),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

popUpDialog(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: ((context, setState) {
            return BlocProvider(
              create: (context) => CreateGroupCubit(),
              child: BlocConsumer<CreateGroupCubit, CreateGroupState>(
                listener: (context, state) {
                  state.whenOrNull(success: () {
                    Navigator.of(context).pop();
                    showSnackbar(
                        context, Colors.green, "Group created successfully.");
                  });
                },
                builder: (blocContext, state) {
                  return AlertDialog(
                    title: const Text(
                      "Create a group",
                      textAlign: TextAlign.left,
                    ),
                    content: state.when(
                      initial: () => CreateGroupDialogueBox(
                        false,
                        (val) => groupName = val,
                      ),
                      success: () => const LoadingScreen(),
                      loading: () => const LoadingScreen(),
                      failure: (e) => FailureScreen(e),
                    ),
                    actions: [
                      CustomButton(
                        onTap: () => Navigator.of(context).pop(),
                        text: "CANCEL",
                      ),
                      CustomButton(
                        onTap: () {
                          blocContext
                              .read<CreateGroupCubit>()
                              .createGroup(groupName);
                        },
                        text: "CREATE",
                      ),
                    ],
                  );
                },
              ),
            );
          }),
        );
      });
}
