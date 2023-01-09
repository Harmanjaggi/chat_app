import 'package:chat_app/assets/app_images.dart';
import 'package:chat_app/features/components/custom_image.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CustomImage(image: AppImages.splashImg)
      ),
    );
  }
}