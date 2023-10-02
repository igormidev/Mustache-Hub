import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/auth/interactor/cubit/login_form_cubit.dart';
import 'package:mustachehub/src/auth/interactor/states/login_form_state.dart';
import 'package:mustachehub/src/auth/ui/views/login_view/login_form.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<LoginFormCubit>();
    return BlocListener<LoginFormCubit, LoginFormState>(
      bloc: bloc,
      listener: (context, state) {
        state.mapOrNull(
          success: (value) async {
            await context.get<UserCubit>().getUser();
            if (context.mounted) {
              context
                  .get<ModulesNavigationCubit>()
                  .selectNavigation(ENavigationPossibilities.account);
            }
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Enter your account'),
        ),
        drawer: context.whenSizeOrNull(
          compactSize: const DashboardDrawer(),
        ),
        body: Center(
          child: LoginForm(),
        ),
      ),
    );
  }
}
