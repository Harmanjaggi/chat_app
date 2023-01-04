import 'dart:io';
import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/profile_page/presentation/profile_cubit/profile_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/custom_button.dart';
import '../../../components/custom_image.dart';
import '../../../group_page/presentation/widgets/base_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      'Profile',
      child: BlocProvider(
        create: (context) => ProfileCubit(),
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            var cubit = context.read<ProfileCubit>();

            File? uploadFile() {
              cubit.getProfileImage();
              if (cubit.pickedFile != null) {
                return File(cubit.pickedFile!.path.toString());
              }
              return null;
            }

            File? openFile(PlatformFile data) {
              return kIsWeb ? null : File(data.path.toString());
            }

            return state.when(
                failure: (e) => FailureScreen(e),
                loading: () => const LoadingScreen(),
                success: (data, image) {
                  return ListView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 100,
                    ),
                    children: [
                      CircleAvatar(
                        child: CustomImage(
                          height: 100,
                          width: 100,
                            file: image != null ? openFile(image) : null),
                      ),
                      CustomButton(
                        text: 'Upload Photo',
                        width: 100,
                        onTap: () => uploadFile(),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Full Name",
                            style: TextStyle(fontSize: 17),
                          ),
                          Text(
                            data.userName ?? '',
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      const Divider(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text("Email", style: TextStyle(fontSize: 17)),
                          Text(
                            data.email ?? '',
                            style: const TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
