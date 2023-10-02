import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/states/payload_state.dart';
import 'package:mustachehub/src/generate/ui/sections/empty_template_input_section.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/generate/ui/pipe_forms_display/boolean_pipe_form.dart';
import 'package:mustachehub/src/generate/ui/pipe_forms_display/text_pipe_form.dart';

class TemplateInputFormPage extends StatelessWidget {
  final String content;
  final ExpectedPayload generatorData;

  const TemplateInputFormPage({
    super.key,
    required this.generatorData,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayloadCubit, PayloadState>(
      bloc: context.get<PayloadCubit>(),
      buildWhen: (previous, current) {
        return previous.runtimeType != current.runtimeType;
      },
      builder: (context, state) {
        return state.map(
          initial: (_) => const EmptyIndicatorSection(
            text: 'No variables created',
            assetName: 'assets/lottie/empty.json',
            willHaveCircleAvatarInDarkMode: true,
          ),
          withValidPayload: (_) => _FinalWidget(
            generatorData,
            content,
          ),
          withRequiredFieldsPendency: (_) => _FinalWidget(
            generatorData,
            content,
          ),
        );
      },
    );
  }
}

class _FinalWidget extends StatelessWidget {
  final String content;
  final ExpectedPayload generatorData;
  const _FinalWidget(this.generatorData, this.content);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextPipeForm(expectedPayload: generatorData, content: content),
        const SizedBox(height: 8),
        BooleanPipeForm(expectedPayload: generatorData, content: content),
      ],
    );
  }
}
