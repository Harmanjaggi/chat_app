import 'package:chat_app/features/components/custom_button.dart';
import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/home_page/presentation/logic/create_group_cubit/create_group_cubit.dart';

import '../logic/home_cubit/home_cubit.dart';
import '../widgets/create_group_dialogue_box.dart';
import '../widgets/group_list.dart';
import '../widgets/logout_dialogue_box.dart';
import '../../../profile_page/presentation/pages/profile_page.dart';
import '../../../search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../components/widgets.dart';
import '../../data/repository/database_service.dart';

bool _isLoading = false;
String groupName = "";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = context.read<HomeCubit>();
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () {
                    nextScreen(context, const SearchPage());
                  },
                  icon: const Icon(Icons.search),
                )
              ],
              elevation: 0,
              centerTitle: true,
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text(
                "Groups",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
            ),
            drawer: Drawer(
                child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 50),
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 150,
                  color: Colors.grey[700],
                ),
                const SizedBox(height: 15),
                Text(
                  cubit.userName ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                const Divider(height: 2),
                ListTile(
                  onTap: () {},
                  selectedColor: Theme.of(context).primaryColor,
                  selected: true,
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  leading: const Icon(Icons.group),
                  title: const Text(
                    "Groups",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ListTile(
                  onTap: () {
                    nextScreenReplace(
                        context,
                        ProfilePage(
                          userName: cubit.userName ?? '',
                          email: cubit.email ?? '',
                        ));
                  },
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  leading: const Icon(Icons.group),
                  title: const Text(
                    "Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ListTile(
                  onTap: () async {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (context) {
                          return const LogoutDialogueBox();
                        });
                  },
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            )),
            body: const GroupList(),
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
                        onPressed: () => Navigator.of(context).pop(),
                        text: "CANCEL",
                      ),
                      CustomButton(
                        onPressed: () {
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
