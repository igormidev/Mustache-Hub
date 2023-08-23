import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/blocs/user/user_bloc.dart';
import 'package:mustachehub/modules/auth/core/enums/e_drawer_navigation_possibilities.dart';
import 'package:mustachehub/modules/auth/views/dashboard/widgets/opacity_widget.dart';
import '../../blocs/dashboard_page/dashboard_page_bloc.dart';
import '../../core/mixins/on_page_change.dart';

part 'widgets/dashboard_app_bar.dart';
part 'widgets/dashboard_drawer.dart';
part 'widgets/dashboard_navigation_rail.dart';

class DashboardMain extends StatelessWidget {
  const DashboardMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: context.whenSizeOrNull(
        compactSize: _DashboardAppbar(),
      ),
      drawer: context.whenSizeOrNull(
        compactSize: const _DashboardDrawer(),
      ),
      body: Row(
        children: [
          context.whenSize(
            compactSize: SizedBox.fromSize(),
            mediumSize: const _DashboardNavigationRail(),
            expandedSize: const _DashboardDrawer(),
          ),
          BlocBuilder<UserBloc, UserState>(
            bloc: context.get<UserBloc>(),
            builder: (context, state) {
              if (state.isLoading) {
                return const Expanded(
                  child: Center(
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  ),
                );
              }

              return const Expanded(
                child: RouterOutlet(),
              );
            },
          ),
        ],
      ),
    );
  }
}
