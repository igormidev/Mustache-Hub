import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/variables/variables_bloc.dart';

class VariablesDisplayWidget extends StatelessWidget {
  const VariablesDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final s = context.scheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: BlocBuilder<VariablesBloc, VariablesState>(
        bloc: context.get<VariablesBloc>(),
        builder: (context, state) {
          return Wrap(
            alignment: WrapAlignment.start,
            runAlignment: WrapAlignment.start,
            spacing: 8,
            runSpacing: 4,
            children: [
              ...state.textPipes.map((textPipe) {
                return _VariableChip.fromPipe(
                  textPipe,
                  color: s.primaryContainer,
                );
              }).toList(),
              ...state.booleanPipes.map((boleanPipe) {
                return _VariableChip.fromPipe(
                  boleanPipe,
                  color: s.secondaryContainer,
                );
              }).toList(),
              ...state.modelPipes
                  .map<List<Widget>>((modelPipe) {
                    final name = modelPipe.name;
                    return [
                      ...modelPipe.textPipes.map((pipe) {
                        return _VariableChip(
                          label: '$name ↔ ${pipe.name}',
                          message: pipe.description,
                          color: s.primaryContainer,
                          border: s.onSurface,
                        );
                      }).toList(),
                      ...modelPipe.booleanPipes.map((pipe) {
                        return _VariableChip(
                          label: '$name ↔ ${pipe.name}',
                          message: pipe.description,
                          color: s.secondaryContainer,
                          border: s.onSurface,
                        );
                      }).toList(),
                      ...modelPipe.modelPipes.map((pipe) {
                        return _VariableChip(
                          label: '$name ↔ ${pipe.name}',
                          message: pipe.description,
                          color: s.tertiaryContainer,
                          border: s.onSurface,
                        );
                      }).toList(),
                    ];
                  })
                  .expand((element) => element)
                  .toList(),
            ],
          );
        },
      ),
    );
  }
}

class _VariableChip extends StatelessWidget {
  final String label;
  final String message;
  final Color color;
  final Color? border;
  const _VariableChip({
    required this.label,
    required this.message,
    required this.color,
    this.border,
  });

  _VariableChip.fromPipe(
    Pipe pipe, {
    required this.color,
  })  : label = pipe.name,
        message = pipe.description,
        border = null;

  @override
  Widget build(BuildContext context) {
    final s = context.scheme;

    return Tooltip(
      message: message,
      child: Chip(
        color: MaterialStateProperty.all(color),
        side: border != null
            ? BorderSide(
                color: border!,
              )
            : null,
        padding: EdgeInsets.zero,
        label: Text(
          label,
          style: context.texts.bodyMedium?.copyWith(
            color: s.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}
