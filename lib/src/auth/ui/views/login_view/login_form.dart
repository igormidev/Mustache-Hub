import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/auth/interactor/cubit/login_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/cubit/sign_up_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/states/login_form_state.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';
import 'package:mustachehub/src/design_system/default_widgets/error_card.dart';
import 'package:mustachehub/src/design_system/theme/extensions/button/large_extension.dart';

class LoginForm extends HookWidget with ValidatorsMixins {
  final _formKey = GlobalKey<FormState>();
  LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.get<LoginFormCubit>();
    final emailEC = useTextEditingController();
    final passwordEC = useTextEditingController();
    return Form(
      key: _formKey,
      child: FittedBox(
        child: SizedBox(
          width: 340,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            children: [
              const FlutterLogo(size: 120),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 20),
                    const CustomHeader(
                      headerTitle: 'Log into your account',
                    ),
                    const SizedBox(height: 20),
                    BlocBuilder<LoginFormCubit, LoginFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is LoginFormStateLoading;

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
                    BlocBuilder<LoginFormCubit, LoginFormState>(
                      bloc: context.get(),
                      builder: (context, state) {
                        final isLoading = state is LoginFormStateLoading;

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
                    const SizedBox(height: 20),
                    BlocBuilder<LoginFormCubit, LoginFormState>(
                        bloc: context.get<LoginFormCubit>(),
                        builder: (context, state) {
                          final isLoading = state is LoginFormStateLoading;

                          return ElevatedButton(
                            style:
                                context.theme<LargeElevatedButtonTheme>().style,
                            onPressed: isLoading
                                ? null
                                : () {
                                    FocusScope.of(context).unfocus();
                                    loginCubit.defineAsInitial();
                                    final formState = _formKey.currentState;

                                    if (formState?.validate() == true) {
                                      loginCubit.logInUserWithCredentials(
                                        email: emailEC.text,
                                        password: passwordEC.text,
                                      );
                                    }
                                  },
                            child: isLoading
                                ? const CircularProgressIndicator.adaptive()
                                : const Text('Enter'),
                          );
                        }),
                    const SizedBox(height: 20),
                    TextButton.icon(
                      icon: const Icon(Icons.login_rounded),
                      label: const Text(
                        'Don\'t have a account? Create one',
                      ),
                      onPressed: () {
                        FocusScope.of(context).unfocus();

                        final bloc = context.get<SignUpFormCubit>();
                        bloc.defineAsInitial();

                        context.push('/auth/signin');
                      },
                    ),
                    const SizedBox(height: 20),
                    ErrorCard<LoginFormCubit, LoginFormState>(
                      isErrorState: (s) {
                        return s.mapOrNull(
                          error: (value) => (
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
