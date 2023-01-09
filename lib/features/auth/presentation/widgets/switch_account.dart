import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../auth_cubit/auth_cubit.dart';

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({this.toRegister = false, super.key});
  final bool toRegister;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          style: theme.textTheme.bodyMedium,
          children: <TextSpan>[
            TextSpan(
                text:
                    toRegister ? 'Dont Have Account' : 'Already Have Account'),
            TextSpan(
              text: toRegister ? ' Create One' : ' go to Login',
              style: const TextStyle(fontWeight: FontWeight.bold),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.read<AuthCubit>().pageSetter();
                },
            ),
          ],
        ),
      ),
    );
  }
}
