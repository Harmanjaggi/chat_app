import '../../../auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../auth/presentation/pages/login_page.dart';
import '../../../auth/data/repositories/auth_service.dart';

class LogoutDialogueBox extends StatelessWidget {
  const LogoutDialogueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Logout"),
      content: const Text("Are you sure you want to logout?"),
      actions: [
        IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.cancel, color: Colors.red),
        ),
        IconButton(
          onPressed: () async {
            context.read<AuthCubit>().signOut();
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const LoginPage()),
                (route) => false);
          },
          icon: const Icon(
            Icons.done,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
