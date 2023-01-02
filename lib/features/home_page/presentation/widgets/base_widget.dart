import 'dart:async';

import 'package:chat_app/features/home_page/presentation/logic/home_cubit/home_cubit.dart';
import 'package:chat_app/navigation/route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'logout_dialogue_box.dart';

class BaseWidget extends StatefulWidget {
  const BaseWidget(
    this.title, {
    super.key,
    this.leading,
    this.action,
    this.child,
    this.floatingActionButton,
  });
  final String title;
  final Widget? leading, action, child, floatingActionButton;
  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            body: widget.child,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              leading: widget.leading,
              actions: [if (widget.action != null) widget.action!],
            ),
            floatingActionButton: widget.floatingActionButton,
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
                    context.read<HomeCubit>().userName ?? '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                  const Divider(height: 2),
                  drawerTile(
                    onTap: () => context.go(RouteGenerator.homeRoute),
                    leading: const Icon(Icons.group),
                    title: 'Groups',
                  ),
                  drawerTile(
                    onTap: () => context.go(RouteGenerator.profileRoute),
                    leading: const Icon(Icons.group),
                    title: 'Profile',
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
              ),
            ),
          );
        },
      ),
    );
  }

  Widget drawerTile({
    void Function()? onTap,
    Widget? leading,
    required String title,
  }) {
    return ListTile(
      onTap: onTap,
      selectedColor: Theme.of(context).primaryColor,
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
