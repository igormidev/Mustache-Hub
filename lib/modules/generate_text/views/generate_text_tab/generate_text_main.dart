import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/pipe_forms_display/boolean_pipe_form.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/pipe_forms_display/text_pipe_form.dart';

class GenerateTextTab extends StatelessWidget {
  const GenerateTextTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateTextBloc, GenerateTextState>(
        bloc: context.get<GenerateTextBloc>(),
        builder: (context, state) {
          final data = state.mapOrNull(withValues: (v) => v);
          if (data == null) return SizedBox.fromSize();

          final List<TextPipe> texts = data.template.texts;
          final List<BooleanPipe> booleans = data.template.booleans;
          final List<ModelPipe> models = data.template.models;
          return SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      TextPipeForm(pipes: texts),
                      const SizedBox(height: 8),
                      BooleanPipeForm(pipes: booleans),
                    ],
                  ),
                ),
                const Expanded(
                  child: Text('ASd'),
                )
              ],
            ),
          );
        });
  }
}
