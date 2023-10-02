import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/auth/interactor/cubit/sign_up_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/states/sign_up_form_state.dart';
import 'package:mustachehub/src/auth/ui/views/signin_view/signin_form.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<SignUpFormCubit>();
    return BlocListener<SignUpFormCubit, SignUpFormState>(
      bloc: bloc,
      listener: (_, state) async {
        final user = context.get<UserCubit>();
        await user.getUser();

        state.mapOrNull(
          success: (value) {
            context.replaceAll('/auth/createSuccessScreen');
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Create an account'),
        ),
        body: Center(
          child: SigninForm(),
        ),
      ),
    );
  }
}
