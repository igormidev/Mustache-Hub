part of '../dashboard_main.dart';

class _DashboardDrawer extends StatelessWidget with PageModuleNavigator {
  const _DashboardDrawer();

  @override
  Widget build(BuildContext context) {
    final dashboardBloc = context.get<DashboardPageBloc>();
    return BlocBuilder<UserBloc, UserState>(
      bloc: context.get<UserBloc>(),
      builder: (context, userState) {
        final user = userState.user;
        final image = user?.urlDisplayImage;
        final name = user?.name;

        return OpacityWidget(
          state: userState,
          child: BlocConsumer<DashboardPageBloc, DashboardPageState>(
            bloc: dashboardBloc,
            listener: (context, state) async {
              Scaffold.of(context).closeDrawer();
              return await navigateToDashboardPage(context, state.pageIndex);
            },
            builder: (context, state) {
              return SizedBox(
                width: 225,
                child: NavigationDrawer(
                  selectedIndex: state.pageIndex,
                  onDestinationSelected: (i) {
                    dashboardBloc.add(DashboardPageEvent.setPage(pageIndex: i));
                  },
                  children: [
                    const SizedBox(height: 20),
                    CircleAvatar(
                      radius: 64,
                      child: Builder(
                        builder: (context) {
                          if (userState.isLoading) {
                            return const CircularProgressIndicator.adaptive(
                              value: 30,
                            );
                          }

                          return CircleAvatar(
                            radius: 58,
                            backgroundImage:
                                image == null ? null : NetworkImage(image),
                            child: user != null
                                ? image != null
                                    ? null
                                    : const Icon(
                                        Icons.image_not_supported_sharp,
                                        size: 90,
                                      )
                                : const Icon(
                                    Icons.no_accounts_rounded,
                                    size: 90,
                                  ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Text(
                        userState.isLoading
                            ? '---'
                            : user != null
                                ? name ?? ''
                                : 'Login',
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...EDrawerNavigationPossibilities.values.map((
                      EDrawerNavigationPossibilities navOption,
                    ) {
                      if (navOption == EDrawerNavigationPossibilities.logOut) {
                        if (userState.isLoggedIn == false) {
                          return SizedBox.fromSize();
                        }
                      }
                      return NavigationDrawerDestination(
                        icon: Icon(navOption.unselectedIcon),
                        selectedIcon: Icon(navOption.selectedIcon),
                        label: Text(navOption.label),
                      );
                    }).toList(),
                    const SizedBox(height: 32),
                    Center(
                      child: Text(
                        'Version pre-alfa 0.01',
                        style: context.texts.bodyMedium?.copyWith(
                          color: context.scheme.outlineVariant,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
