import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/auth/blocs/auth/auth_bloc.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:mustachehub/shared/listeners/default_state_dialog_listener.dart';
import 'package:mustachehub/theme/extensions/button/large_extension.dart';

class SignUpMain extends HookWidget with ValidatorsMixins {
  SignUpMain({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<AuthBloc>();
    final nameEC = useTextEditingController();
    final emailEC = useTextEditingController();
    final passwordEC = useTextEditingController();

    return DefaultStateDialogListener<AuthBloc, AuthState>(
      errorState: (s) => s.mapOrNull(error: (v) => v.error),
      loadingState: (s) => s.mapOrNull(loading: (v) => v),
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                const FlutterLogo(size: 120),
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 300),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20),
                        const CustomHeader(
                          headerTitle: 'Sign in',
                          headerSubtitle: 'Complete all the fields bellow '
                              'to create a Mustache account',
                        ),
                        TextFormField(
                          controller: nameEC,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                          validator: (val) => combineValidators([
                            () => isNotEmpty(val),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: emailEC,
                          decoration: const InputDecoration(
                            labelText: 'E-mail',
                          ),
                          validator: isValidEmail,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: passwordEC,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                          validator: (val) => combineValidators([
                            () => isNotEmpty(val),
                            () => lenghtHasToBeAtLeast(8, val),
                          ]),
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Confirm password',
                          ),
                          validator: (text) {
                            if (text != passwordEC.text) {
                              return 'Passwords need to be the same';
                            }

                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style:
                              context.theme<LargeElevatedButtonTheme>().style,
                          onPressed: () {
                            if (_formKey.currentState?.validate() == true) {
                              bloc.add(AuthEvent.createUserWithCredentials(
                                name: nameEC.text,
                                email: emailEC.text,
                                password: passwordEC.text,
                              ));
                            }
                          },
                          child: const Text('Sign in'),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
