import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/dashboard/interactor/states/initial_binding_state.dart';
import 'package:mustachehub/src/dashboard/interactor/states/modules_navigation_state.dart';
import 'package:mustachehub/src/dashboard/interactor/states/navigation_possibilities_state.dart';
import 'package:mustachehub/src/dashboard/ui/pages/opacity_widget.dart';
import 'package:mustachehub/src/dashboard/ui/utils/navigation_possibilities_extension.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';
import 'package:mustachehub/src/user/ui/widgets/user_display_circle_avatar.dart';

class DashboardRail extends StatelessWidget {
  const DashboardRail({super.key});

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
            int selectedIndex = navPossibilitiesState.possibilities
                .indexOf(modulesNavState.selectedPossibility);
            if (selectedIndex == -1) selectedIndex = 2;

            return InitialBindCubit(
              bloc: context.get(),
              builder: (
                BuildContext context,
                InitialBindingState state,
              ) {
                return OpacityWidget(
                  state: state,
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      InkWell(
                        onTap: () {
                          final hasUser = context.user != null;
                          if (hasUser) {
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
                          width: 60,
                          height: 60,
                          size: UserImageSize.small,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return SingleChildScrollView(
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  minHeight: constraints.maxHeight,
                                ),
                                child: IntrinsicHeight(
                                  child: NavigationRail(
                                    selectedIndex: selectedIndex,
                                    labelType: NavigationRailLabelType.selected,
                                    onDestinationSelected: (index) {
                                      final ENavigationPossibilities
                                          selectedTab = navPossibilitiesState
                                              .possibilities[index];

                                      context
                                          .get<ModulesNavigationCubit>()
                                          .selectNavigation(selectedTab);
                                    },
                                    destinations:
                                        navPossibilitiesState.possibilities.map(
                                      (navOption) {
                                        return NavigationRailDestination(
                                          icon: Icon(navOption.unselectedIcon),
                                          selectedIcon:
                                              Icon(navOption.selectedIcon),
                                          label: Text(navOption.shortName()),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
