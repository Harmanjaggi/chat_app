import 'package:chat_app/features/base_widget/base_cubit/base_cubit.dart';
import 'package:chat_app/features/components/custom_image.dart';
import 'package:chat_app/navigation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../group_page/presentation/widgets/logout_dialogue_box.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget(
    this.title, {
    required this.child,
    this.leading,
    this.action,
    this.floatingActionButton,
    super.key,
  });
  final String title;
  final Widget child;
  final Widget? leading, action, floatingActionButton;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              centerTitle: true,
              actions: [if (action != null) action!],
            ),
            SliverToBoxAdapter(child: child)
          ],
        ),
        floatingActionButton: floatingActionButton,
        drawer: Drawer(
          child: BlocProvider(
            create: (context) => BaseCubit(),
            child: BlocBuilder<BaseCubit, BaseState>(
              builder: (context, state) {
                return ListView(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  children: <Widget>[
                    state.image != null && state.image != ""
                        ? CircleAvatar(
                            backgroundColor: Colors.grey.shade400,
                            radius: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: CustomImage(
                                height: 200,
                                width: 200,
                                networkImage: state.image,
                              ),
                            ),
                          )
                        : Icon(
                            Icons.account_circle,
                            size: 150,
                            color: Colors.grey[700],
                          ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        defaultColumnWidth:
                            const IntrinsicColumnWidth(flex: 4.0),
                        children: [
                          TableRow(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  "Username :",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
                                child: Text(
                                  state.userName.toString(),
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  "Type :",
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16, 4, 0, 4),
                                child: Text(
                                  state.type.toString(),
                                  style: theme.textTheme.bodyMedium,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Divider(height: 2),
                    drawerTile(
                      onTap: () => context.go(RouteGenerator.chatroomRoute),
                      leading: const Icon(Icons.group),
                      title: 'Private Chatroom',
                      color: Theme.of(context).primaryColor,
                    ),
                    drawerTile(
                      onTap: () => context.go(RouteGenerator.groupRoute),
                      leading: const Icon(Icons.groups_rounded),
                      title: 'Groups',
                      color: Theme.of(context).primaryColor,
                    ),
                    drawerTile(
                      onTap: () => context.go(RouteGenerator.profileRoute),
                      leading: const Icon(Icons.person),
                      title: 'Profile',
                      color: Theme.of(context).primaryColor,
                    ),
                    drawerTile(
                      onTap: () async {
                        await showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => const LogoutDialogueBox(),
                        );
                      },
                      leading: const Icon(Icons.exit_to_app),
                      title: 'Logout',
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget drawerTile({
    void Function()? onTap,
    Widget? leading,
    required String title,
    Color? color,
  }) {
    return ListTile(
      onTap: onTap,
      selectedColor: color,
      selected: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
