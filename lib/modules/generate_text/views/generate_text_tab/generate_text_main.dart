import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
import 'package:mustachehub/modules/generate_text/logic/dtos/pipe_dto.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/pipe_forms_display/boolean_pipe_form.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/pipe_forms_display/text_pipe_form.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/sections/text_display_section.dart';

class GenerateTextTab extends HookWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  GenerateTextTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final state = context.get<GenerateTextBloc>().state;

    final data = state.mapOrNull(withData: (v) => v)?.pipes;
    if (data == null) return SizedBox.fromSize();

    final List<TextPipeDto> texts = data.textDtos;
    final List<BooleanPipeDto> booleans = data.booleanDtos;
    // final List<ModelPipe> models = data.template.models;

    return Form(
      key: _key,
      child: SizedBox(
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
            const SizedBox(width: 8),
            Expanded(
              child: TextDisplaySection(
                formKey: _key,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
