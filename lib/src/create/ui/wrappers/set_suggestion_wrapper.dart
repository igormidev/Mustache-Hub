import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/sugestion_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/interactor/state/variables_state.dart';

class SetSuggestionWrapper extends StatelessWidget {
  final Widget child;
  const SetSuggestionWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final sugestionCubit = context.get<SugestionCubit>();
    return BlocListener<VariablesCubit, VariablesState>(
      bloc: context.get<VariablesCubit>(),
      listener: (context, state) {
        sugestionCubit.setFlatMap(
          textPipes: state.textPipes,
          modelPipes: state.modelPipes,
          booleanPipes: state.booleanPipes,
        );
      },
      child: child,
    );
  }
}
