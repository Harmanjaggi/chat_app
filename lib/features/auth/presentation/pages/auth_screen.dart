import 'package:chat_app/assets/app_images.dart';
import 'package:chat_app/features/components/custom_image.dart';

import 'login_page.dart';
import 'register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth_cubit/auth_cubit.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: context.read<AuthCubit>().controller,
        children: [
          Stack(children: const [
            CustomImage(
              image: AppImages.authImg,
              margin: EdgeInsets.only(top: 70),
            ),
            LoginPage(),
          ]),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: const [
              CustomImage(
                image: AppImages.authImg,
                margin: EdgeInsets.only(bottom: 450),
              ),
              RegisterPage(),
            ],
          ),
        ],
      ),
    );
  }
}
