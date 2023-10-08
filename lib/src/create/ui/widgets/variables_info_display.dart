import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/state/sugestion_state.dart';
import 'package:mustachehub/src/create/ui/widgets/variables_display_widget.dart';

class VariablesInfoDisplay extends StatelessWidget {
  const VariablesInfoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: BlocBuilder<SugestionCubit, SugestionState>(
        bloc: context.get<SugestionCubit>(),
        builder: (context, state) {
          return state.map(
            initial: (value) {
              return const VariablesDisplayWidget();
            },
            withSugestion: (value) {
              return Text(value.availibleVariablesString);
            },
          );
        },
      ),
    );
  }
}
