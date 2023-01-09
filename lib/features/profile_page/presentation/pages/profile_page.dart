import 'dart:io';
import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/profile_page/presentation/profile_cubit/profile_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../components/custom_image.dart';
import '../../../base_widget/pages/base_widget.dart';

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

            File? openFile(PlatformFile data) {
              return kIsWeb ? null : File(data.path.toString());
            }

            return state.when(
              failure: (e) => FailureScreen(e),
              loading: () => const LoadingScreen(),
              success: (data, image) {
                String type = data.type != null && data.type != ""
                    ? data.type!
                    : "Not Mentioned";
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 100,
                  ),
                  children: [
                    Center(
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          image == null
                              ? CircleAvatar(
                                  backgroundColor: Colors.grey.shade400,
                                  radius: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CustomImage(
                                      height: 200,
                                      width: 200,
                                      networkImage: data.profilePic != ""
                                          ? data.profilePic
                                          : null,
                                    ),
                                  ),
                                )
                              : CircleAvatar(
                                  backgroundColor: Colors.grey.shade400,
                                  radius: 100,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CustomImage(
                                      height: 200,
                                      width: 200,
                                      file: openFile(image),
                                    ),
                                  ),
                                ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            child: IconButton(
                              onPressed: () => cubit.getProfileImage(),
                              icon: const Icon(Icons.edit),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
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
                        const Text(
                          "Email",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          data.email ?? '',
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                    const Divider(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Type",
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          type,
                          style: const TextStyle(fontSize: 17),
                        ),
                      ],
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
