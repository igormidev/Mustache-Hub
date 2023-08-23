part of '../dashboard_main.dart';

class _DashboardNavigationRail extends StatelessWidget
    with PageModuleNavigator {
  const _DashboardNavigationRail();

  @override
  Widget build(BuildContext context) {
    final dashboardBloc = context.get<DashboardPageBloc>();
    return BlocBuilder<UserBloc, UserState>(
        bloc: context.get<UserBloc>(),
        builder: (context, userState) {
          final user = userState.user;
          return BlocConsumer<DashboardPageBloc, DashboardPageState>(
            bloc: dashboardBloc,
            listener: (c, s) => navigateToDashboardPage(c, s.pageIndex),
            builder: (context, state) {
              return NavigationRail(
                selectedIndex: state.pageIndex,
                labelType: NavigationRailLabelType.selected,
                onDestinationSelected: (i) {
                  dashboardBloc.add(DashboardPageEvent.setPage(pageIndex: i));
                },
                leading: user?.urlDisplayImage != null
                    ? CircleAvatar(
                        radius: 32,
                        child: CircleAvatar(
                          radius: 26,
                          backgroundImage: NetworkImage(
                            user!.urlDisplayImage!,
                          ),
                        ),
                      )
                    : null,
                destinations: EDrawerNavigationPossibilities.values.map(
                  (
                    EDrawerNavigationPossibilities navOption,
                  ) {
                    return NavigationRailDestination(
                      icon: Icon(navOption.unselectedIcon),
                      selectedIcon: Icon(navOption.selectedIcon),
                      label: Text(navOption.shortLabel),
                    );
                  },
                ).toList(),
              );
            },
          );
        });
  }
}
