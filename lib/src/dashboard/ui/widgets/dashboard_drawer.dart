import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/initial_binding_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/dashboard/interactor/states/initial_binding_state.dart';
import 'package:mustachehub/src/dashboard/interactor/states/modules_navigation_state.dart';
import 'package:mustachehub/src/dashboard/interactor/states/navigation_possibilities_state.dart';
import 'package:mustachehub/src/dashboard/ui/pages/opacity_widget.dart';
import 'package:mustachehub/src/dashboard/ui/utils/navigation_possibilities_extension.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';
import 'package:mustachehub/src/user/ui/widgets/user_display_circle_avatar.dart';

typedef NavPossibilitiesCubit
    = BlocBuilder<NavigationPossibilitiesCubit, NavigationPossibilitiesState>;
typedef ModulesNavCubit
    = BlocBuilder<ModulesNavigationCubit, ModulesNavigationState>;
typedef InitialBindCubit
    = BlocBuilder<InitialBindingCubit, InitialBindingState>;

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavPossibilitiesCubit(
      bloc: context.get(),
      builder: (
        BuildContext context,
        NavigationPossibilitiesState navPossibilitiesState,
      ) {
        return ModulesNavCubit(
          bloc: context.get(),
          builder: (
            BuildContext context,
            ModulesNavigationState modulesNavState,
          ) {
            final selectedIndex = navPossibilitiesState.possibilities
                .indexOf(modulesNavState.selectedPossibility);

            return InitialBindCubit(
              bloc: context.get(),
              builder: (
                BuildContext context,
                InitialBindingState state,
              ) {
                return OpacityWidget(
                  state: state,
                  child: SizedBox(
                    width: 225,
                    child: NavigationDrawer(
                      selectedIndex: selectedIndex,
                      onDestinationSelected: (index) {
                        final ENavigationPossibilities selectedTab =
                            navPossibilitiesState.possibilities[index];

                        context
                            .get<ModulesNavigationCubit>()
                            .selectNavigation(selectedTab);
                      },
                      children: [
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            final hasUser = context.user != null;
                            if (hasUser) {
                              Scaffold.of(context).closeDrawer();
                              context
                                  .get<ModulesNavigationCubit>()
                                  .selectNavigation(
                                      ENavigationPossibilities.account);
                            } else {
                              context
                                  .get<ModulesNavigationCubit>()
                                  .selectNavigation(
                                      ENavigationPossibilities.login);
                            }
                          },
                          child: const UserDisplayCircleAvatar(
                            width: 160,
                            height: 160,
                          ),
                        ),
                        const SizedBox(height: 20),
                        ...navPossibilitiesState.possibilities.map((navOption) {
                          return NavigationDrawerDestination(
                            icon: Icon(navOption.unselectedIcon),
                            selectedIcon: Icon(navOption.selectedIcon),
                            label: Text(navOption.fullName()),
                          );
                        }).toList(),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
