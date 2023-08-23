import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/auth/blocs/login/login_bloc.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:mustachehub/shared/listeners/default_state_dialog_listener.dart';
import 'package:mustachehub/theme/extensions/button/large_extension.dart';

class LoginMain extends HookWidget with ValidatorsMixins {
  LoginMain({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<LoginBloc>();
    final emailEC = useTextEditingController();
    final passwordEC = useTextEditingController();

    return DefaultStateDialogListener<LoginBloc, LoginState>(
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
                          headerTitle: 'Log into your account',
                        ),
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
                        const SizedBox(height: 20),
                        ElevatedButton(
                          style:
                              context.theme<LargeElevatedButtonTheme>().style,
                          onPressed: () {
                            if (_formKey.currentState?.validate() == true) {
                              bloc.add(LoginEvent.logInUserWithCredentials(
                                email: emailEC.text,
                                password: passwordEC.text,
                              ));
                            }
                          },
                          child: const Text('Enter'),
                        ),
                        const SizedBox(height: 20),
                        TextButton.icon(
                          icon: const Icon(Icons.login_rounded),
                          label:
                              const Text('Don\'t have a account? Create one'),
                          onPressed: () {
                            context.push('/auth/signin');
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
