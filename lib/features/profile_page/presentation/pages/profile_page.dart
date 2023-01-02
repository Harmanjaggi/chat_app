import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/home_page/presentation/widgets/base_widget.dart';
import 'package:chat_app/features/profile_page/presentation/profile_cubit/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      'Profile',
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 170),
        child: BlocProvider(
          create: (context) => ProfileCubit(),
          child: BlocBuilder<ProfileCubit, ProfileState>(
            builder: (context, state) {
              return state.when(
                  failure: (e) => FailureScreen(e),
                  loading: () => const LoadingScreen(),
                  success: (data) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.account_circle,
                          size: 200,
                          color: Colors.grey[700],
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
      ),
    );
  }
}
