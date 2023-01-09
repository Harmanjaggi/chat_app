import 'package:chat_app/features/components/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../helper/input_validation.dart';
import '../../../../navigation/route.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text_field.dart';
import '../../data/models/sign_up_model/sign_up_model.dart';
import '../auth_cubit/auth_cubit.dart';
import '../widgets/switch_account.dart';

class RegisterPage extends StatelessWidget with InputValidationMixin {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    TextEditingController typeController = TextEditingController();
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(36),
            topRight: Radius.circular(36),
          ),
          // boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 8.0)],
        ),
        padding: const EdgeInsets.fromLTRB(16, 18, 16, 8),
        child: Form(
          key: formGlobalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 18),
              Align(
                  alignment: Alignment.topCenter,
                  child: Text('Register Account',
                      style: theme.textTheme.headline5)),
              const SizedBox(height: 28),
              CustomTextField(
                controller: fullNameController,
                hintText: 'FullName',
                // prefixIcon: AppIcons.userIcon,
                keyboardType: TextInputType.name,
                validator: usernameValidation,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                validator: emailValidation,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: passwordValidation,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) => confirmPasswordValidation(
                  value,
                  passwordController.text,
                ),
              ),
              const SizedBox(height: 16),
              CustomDropdown(
                width: 130,
                hintText: 'Type',
                list: typeList,
                controller: typeController,
              ),
              const SizedBox(height: 18),
              Center(
                child: CustomButton(
                  text: 'Register',
                  onTap: () {
                    if (formGlobalKey.currentState!.validate()) {
                      SignUpModel user = SignUpModel(
                        fullName: fullNameController.text,
                        email: emailController.text,
                        password: passwordController.text,
                        type: typeController.text
                      );
                      context.read<AuthCubit>().signUp(user);
                      context.go(RouteGenerator.initialRoute);
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
              const SwitchAccount(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> typeList = ['Professor', 'Parent', 'Student'];
