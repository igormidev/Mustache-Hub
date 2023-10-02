import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/create_tab_cubit.dart';
import 'package:mustachehub/src/create/interactor/state/create_tab_state.dart';
import 'package:mustachehub/src/create/ui/sections/text_content_section.dart';
import 'package:mustachehub/src/create/ui/sections/variables_creation_section.dart';

class CreateTemplatePage extends HookWidget {
  const CreateTemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 3);

    return BlocListener<CreateTabCubit, CreateTabState>(
      bloc: context.get<CreateTabCubit>(),
      listener: (context, state) {
        tabController.animateTo(state.index);
      },
      child: TabBarView(
        controller: tabController,
        children: [
          VariablesCreationSection(),
          const TextContentSection(),
          Container(color: Colors.green[200]),
        ],
      ),
    );
  }
}
