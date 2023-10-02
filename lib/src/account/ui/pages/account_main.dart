// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/initial_binding_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';
import 'package:mustachehub/src/user/ui/widgets/user_display_circle_avatar.dart';

class AccountMain extends StatelessWidget {
  const AccountMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User account'),
      ),
      drawer: context.whenSizeOrNull(
        compactSize: const DashboardDrawer(),
      ),
      body: BlocBuilder<UserCubit, UserModelState>(
        bloc: context.get(),
        builder: (context, state) {
          final user = state.user;
          if (user == null) return SizedBox.fromSize();

          return ListView(
            children: [
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 190,
                  height: 180,
                  child: Stack(
                    children: [
                      const UserDisplayCircleAvatar(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: FloatingActionButton.small(
                            tooltip: 'Change image',
                            onPressed: () {
                              context.push('/account/selectImage');
                            },
                            child: const Icon(
                              Icons.edit,
                              size: 20,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: context.scheme.secondaryContainer,
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 360),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Text(
                          user.name,
                          style: context.texts.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        const Divider(height: 8),
                        Text(
                          user.email,
                          style: context.texts.bodyMedium?.copyWith(
                            color: context.scheme.outline,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 360,
                      maxHeight: 30,
                    ),
                    child: SizedBox.expand(
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.logout),
                        onPressed: () async {
                          context
                              .get<InitialBindingCubit>()
                              .startSeachingUserModel();
                          await Future.delayed(const Duration(seconds: 2));
                          await FirebaseAuth.instance.signOut();

                          await context.get<UserCubit>().getUser();
                          context
                              .get<ModulesNavigationCubit>()
                              .selectNavigation(ENavigationPossibilities.login);
                        },
                        label: const Text(
                          'Log out',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  'Version 1.0.0',
                  style: context.texts.bodyMedium?.copyWith(
                    color: context.scheme.outlineVariant,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
