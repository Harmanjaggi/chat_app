import 'dart:io';
import 'package:chat_app/features/auth/presentation/pages/register_page.dart';
import 'package:chat_app/features/components/custom_button.dart';
import 'package:chat_app/features/components/custom_dropdown.dart';
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
    Widget rowWidget(String title, String value) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 17),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 17),
          ),
        ],
      );
    }

    final typeController = TextEditingController();
    return BlocProvider(
      create: (context) => ProfileCubit(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          var cubit = context.read<ProfileCubit>();
          File? openFile(PlatformFile data) {
            return kIsWeb ? null : File(data.path.toString());
          }

          return BaseWidget(
            'Profile',
            action: MaterialButton(
              padding: EdgeInsets.zero,
              onPressed: () => cubit.toggleIsEdit(),
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            child: state.when(
              failure: (e) => FailureScreen(e),
              loading: () => const LoadingScreen(),
              success: (data, image, isEdit) {
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
                          if (isEdit)
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
                    const SizedBox(height: 24),
                    if (!isEdit) ...[
                      rowWidget("Full Name", data.userName ?? ''),
                      const Divider(height: 20),
                      rowWidget("Email", data.email ?? ''),
                      const Divider(height: 20),
                      rowWidget("Type", type),
                    ] else ...[
                      const Text(
                        "Type",
                        style: TextStyle(fontSize: 17),
                      ),
                      const SizedBox(height: 8),
                      Center(
                        child: CustomDropdown(
                          width: 150,
                          hintText: "Type",
                          list: typeList,
                          controller: typeController,
                        ),
                      ),
                      const SizedBox(height: 28),
                      CustomButton(
                        text: "Apply",
                        onTap: () => cubit.apply(typeController.text),
                      ),
                    ]
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
