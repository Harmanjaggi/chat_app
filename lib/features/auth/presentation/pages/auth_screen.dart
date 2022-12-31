import 'login_page.dart';
import 'register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_cubit/auth_cubit.dart';
import '../widgets/auth_background.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.read<AuthCubit>().controller,
        children: [
          Stack(children: const [
            AuthBackground(),
            LoginPage(),
          ]),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: const [
              AuthBackground(),
              RegisterPage(),
            ],
          ),
        ],
      ),
    );
  }

  Widget nameWithIcon(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 16, 0),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        // SvgPicture.asset(AppIcons.lazyEngineerIcon),
        const SizedBox(width: 8),
        Text(
          'lazyEngineer',
          style: theme.textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    );
  }
}
