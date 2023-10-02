import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/initial_binding_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/modules_navigation_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/dashboard/interactor/states/initial_binding_state.dart';
import 'package:mustachehub/src/dashboard/interactor/states/modules_navigation_state.dart';
import 'package:mustachehub/src/dashboard/ui/pages/fatal_error_page.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_rail.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_stats_cubit.dart';
import 'package:mustachehub/src/user/interactor/entities/user_model.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';
import 'package:mustachehub/src/user/interactor/states/user_stats_state.dart';

class DashboardMain extends HookWidget {
  const DashboardMain({super.key});

  @override
  Widget build(BuildContext context) {
    final userCubit = context.get<UserCubit>();
    useEffect(() {
      userCubit.getUser();
      return null;
    }, const []);
    return MultiBlocListener(
      listeners: [
        BlocListener<ModulesNavigationCubit, ModulesNavigationState>(
          bloc: context.get(),
          listener: (context, state) {
            switch (state.selectedPossibility) {
              case ENavigationPossibilities.find:
                context.replaceAll('/find');
              case ENavigationPossibilities.collection:
                context.replaceAll('/collection');
              case ENavigationPossibilities.generateText:
                context.replaceAll('/generate/template');
              case ENavigationPossibilities.createMustache:
                context.replaceAll('/create/template');
              case ENavigationPossibilities.account:
                context.replaceAll('/account/info');
              case ENavigationPossibilities.login:
                context.replaceAll('/auth/login');
              case ENavigationPossibilities.settings:
                context.replaceAll('/config');
              case ENavigationPossibilities.becamePremium:
                context.replaceAll('/becamepremium');
            }
          },
        ),
        BlocListener<UserCubit, UserModelState>(
          bloc: userCubit,
          listener: (context, UserModelState state) {
            final bindindBloc = context.get<InitialBindingCubit>();

            state.mapOrNull(
              logedIn: (value) async {
                bindindBloc.endedLoadingUserModel();
                final UserModel user = value.user;
                final userStatsCubit = context.get<UserStatsCubit>();
                await userStatsCubit.getUserStats(user.id);
              },
              noneUser: (_) {
                bindindBloc.endedLoadingUserModel();
                final userStatsCubit = context.get<UserStatsCubit>();
                userStatsCubit.unregisterUser();
              },
              withError: (value) {
                bindindBloc.gotFatalErro(
                  value.error,
                  value.stackTrace,
                );
              },
            );
          },
        ),
        BlocListener<UserStatsCubit, UserStatsState>(
          bloc: context.get(),
          listener: (context, UserStatsState state) {
            final bindindBloc = context.get<InitialBindingCubit>();

            state.mapOrNull(
              withNoData: (_) {
                context
                    .get<NavigationPossibilitiesCubit>()
                    .setUserToLoggedOut();
                bindindBloc.completeBinding();
              },
              withData: (_) {
                context.get<NavigationPossibilitiesCubit>().setUserToLoggedIn();
                bindindBloc.completeBinding();
              },
              withError: (value) {
                context.get<NavigationPossibilitiesCubit>().setUserToLoggedIn();
                bindindBloc.gotFatalErro(
                  value.error,
                  value.stackTrace,
                );
              },
            );
          },
        ),
      ],
      child: Scaffold(
        drawer: context.whenSizeOrNull(
          compactSize: const DashboardDrawer(),
        ),
        body: Row(
          children: [
            context.whenSize(
              compactSize: SizedBox.fromSize(),
              mediumSize: const DashboardRail(),
              expandedSize: const DashboardDrawer(),
            ),
            Expanded(
              child: BlocBuilder<InitialBindingCubit, InitialBindingState>(
                bloc: context.get<InitialBindingCubit>(),
                builder: (context, state) {
                  if (state is! InitialBindingComplete &&
                      state is! GotFatalError) {
                    return const Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: CircularProgressIndicator.adaptive(),
                      ),
                    );
                  }

                  if (state is GotFatalError) {
                    return FatalErrorPage(
                      error: state.error,
                    );
                  }

                  return const RouterOutlet();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
