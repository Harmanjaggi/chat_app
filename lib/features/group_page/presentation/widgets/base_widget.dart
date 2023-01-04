import 'package:chat_app/navigation/route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'logout_dialogue_box.dart';

class BaseWidget extends StatelessWidget {
  const BaseWidget(
    this.title, {
    required this.child,
    this.leading,
    this.action,
    this.floatingActionButton,
    super.key,
    this.searchBox,
  });
  final String title;
  final Widget child;
  final Widget? leading, action, floatingActionButton, searchBox;
  @override
  Widget build(BuildContext context) {
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
              expandedHeight: 110,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  alignment: Alignment.bottomCenter,
                  child: searchBox,
                ),
              ),
            ),
            SliverToBoxAdapter(child: child)
          ],
        ),
        floatingActionButton: floatingActionButton,
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
              // Text(
              //   context.read<GroupCubit>().userName ?? '',
              //   textAlign: TextAlign.center,
              //   style: const TextStyle(fontWeight: FontWeight.bold),
              // ),
              const SizedBox(height: 30),
              const Divider(height: 2),
              drawerTile(
                  onTap: () => context.go(RouteGenerator.groupRoute),
                  leading: const Icon(Icons.group),
                  title: 'Groups',
                  color: Theme.of(context).primaryColor),
              drawerTile(
                  onTap: () => context.go(RouteGenerator.chatroomRoute),
                  leading: const Icon(Icons.group),
                  title: 'Private Chatroom',
                  color: Theme.of(context).primaryColor),
              drawerTile(
                  onTap: () => context.go(RouteGenerator.profileRoute),
                  leading: const Icon(Icons.group),
                  title: 'Profile',
                  color: Theme.of(context).primaryColor),
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
