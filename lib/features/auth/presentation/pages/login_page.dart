import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../helper/input_validation.dart';
import '../../../../navigation/route.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text_field.dart';
import '../../data/models/sign_in_model/sign_in_model.dart';
import '../auth_cubit/auth_cubit.dart';
import '../widgets/switch_account.dart';

class LoginPage extends StatelessWidget with InputValidationMixin {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final formGlobalKey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    ThemeData theme = Theme.of(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            ),
            // boxShadow: [
            //   BoxShadow(color: Colors.grey, blurRadius: 8.0),
            // ],
          ),
          padding: const EdgeInsets.fromLTRB(16, 18, 16, 8),
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                const SizedBox(height: 18),
                Text('Login Account', style: theme.textTheme.headline5),
                const SizedBox(height: 40),
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
                const SizedBox(height: 40),
                CustomButton(
                  text: 'Login',
                  onTap: () {
                    if (formGlobalKey.currentState!.validate()) {
                      SignInModel user = SignInModel(
                        email: emailController.text,
                        password: passwordController.text,
                      );
                      context.read<AuthCubit>().signIn(user);
                      context.go(RouteGenerator.initialRoute);
                    }
                  },
                ),
                const SizedBox(height: 40),
                const SwitchAccount(toRegister: true),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
