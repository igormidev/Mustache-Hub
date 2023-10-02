import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/auth/interactor/cubit/sign_up_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/states/sign_up_form_state.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';
import 'package:mustachehub/src/design_system/default_widgets/error_card.dart';
import 'package:mustachehub/src/design_system/theme/extensions/button/large_extension.dart';

class SigninForm extends HookWidget with ValidatorsMixins {
  final _formKey = GlobalKey<FormState>();
  SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    final signUpCubit = context.get<SignUpFormCubit>();
    final nameEC = useTextEditingController();
    final emailEC = useTextEditingController();
    final passwordEC = useTextEditingController();

    return Form(
      key: _formKey,
      child: FittedBox(
        child: SizedBox(
          width: 340,
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            shrinkWrap: true,
            children: [
              const FlutterLogo(size: 120),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    const CustomHeader(
                      headerTitle: 'Sign in',
                      headerSubtitle: 'Complete all the fields bellow '
                          'to create a Mustache account',
                    ),
                    const SizedBox(height: 20),
                    BlocBuilder<SignUpFormCubit, SignUpFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is SignUpFormStateLoading;

                        return TextFormField(
                          enabled: isLoading == false,
                          controller: nameEC,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                          validator: (val) => combineValidators([
                            () => isNotEmpty(val),
                          ]),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<SignUpFormCubit, SignUpFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is SignUpFormStateLoading;

                        return TextFormField(
                          enabled: isLoading == false,
                          controller: emailEC,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                          ),
                          validator: isValidEmail,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<SignUpFormCubit, SignUpFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is SignUpFormStateLoading;

                        return TextFormField(
                          enabled: isLoading == false,
                          controller: passwordEC,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                          validator: (val) => combineValidators([
                            () => isNotEmpty(val),
                            () => lenghtHasToBeAtLeast(8, val),
                          ]),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    BlocBuilder<SignUpFormCubit, SignUpFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is SignUpFormStateLoading;

                        return TextFormField(
                          enabled: isLoading == false,
                          decoration: const InputDecoration(
                            labelText: 'Confirm password',
                          ),
                          validator: (text) {
                            if (text != passwordEC.text) {
                              return 'Passwords need to be the same';
                            }

                            return null;
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    BlocBuilder<SignUpFormCubit, SignUpFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is SignUpFormStateLoading;

                        return ElevatedButton(
                          style:
                              context.theme<LargeElevatedButtonTheme>().style,
                          onPressed: isLoading
                              ? null
                              : () {
                                  final formState = _formKey.currentState;
                                  if (formState?.validate() == true) {
                                    signUpCubit.createUser(
                                      name: nameEC.text,
                                      email: emailEC.text,
                                      password: passwordEC.text,
                                    );
                                  }
                                },
                          child: isLoading
                              ? const CircularProgressIndicator.adaptive()
                              : const Text('Sign in'),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    TextButton.icon(
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Already have a account? Log in!'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(height: 20),
                    ErrorCard<SignUpFormCubit, SignUpFormState>(
                      isErrorState: (s) {
                        return s.mapOrNull(
                          withError: (value) => (
                            value.error.message,
                            value.error.description,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
