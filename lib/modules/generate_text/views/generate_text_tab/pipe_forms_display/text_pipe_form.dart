import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/list_extensions.dart';
import 'package:mustachehub/core/hooks/debouncer_delay_hook.dart';
import 'package:mustachehub/core/mixins/validators_mixins.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
import 'package:mustachehub/modules/home/views/home/home_main.dart';
import 'package:mustachehub/shared/custom_header.dart';

class TextPipeForm extends StatelessWidget {
  final List<TextPipe> pipes;
  const TextPipeForm({
    super.key,
    required this.pipes,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<GenerateTextBloc>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeader(headerTitle: 'Text variables'),
        const SizedBox(height: 8),
        ...pipes.splitIntoGroups(2).map((pipesCluster) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: pipesCluster.map((pipe) {
                return Expanded(
                  child: TextPipeTextfield(
                    pipe: pipe,
                    bloc: bloc,
                  ),
                );
              }).toList(),
            ),
          );
        }).toList(),
      ],
    );
  }
}

class TextPipeTextfield extends HookWidget with ValidatorsMixins {
  final GenerateTextBloc bloc;
  final TextPipe pipe;
  const TextPipeTextfield({
    super.key,
    required this.pipe,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    final debouncer = useDebouncer(milliseconds: 1200);
    return TextFormField(
      decoration: InputDecoration(
        labelText: pipe.name,
        hintText: pipe.description,
        suffixIcon: Tooltip(
          message: pipe.description,
          child: const Icon(Icons.info),
        ),
      ),
      autovalidateMode: AutovalidateMode.always,
      validator: (String? value) {
        if (pipe.isRequired) {
          return isNotEmpty(value);
        }

        return null;
      },
      onChanged: (value) {
        debouncer.resetDebounce(() {
          final text = value.isEmpty == true ? null : value;
          bloc.add(GenerateTextEvent.addPayloadValue(
            pipe: pipe,
            value: text,
          ));
        });
      },
    );
  }
}
