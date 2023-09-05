import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';
import 'package:mustachehub/core/hooks/debouncer_delay_hook.dart';
import 'package:mustachehub/core/hooks/focus_node_init_requesting_focus_hook.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
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
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: pipes.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            mainAxisExtent: 55,
          ),
          itemBuilder: (context, index) {
            final pipe = pipes[index];
            return TextPipeTextfield(
              pipe: pipe,
              bloc: bloc,
            );
          },
        ),
      ],
    );
  }
}

class TextPipeTextfield extends HookWidget {
  final GenerateTextBloc bloc;
  final TextPipe pipe;
  const TextPipeTextfield({
    super.key,
    required this.pipe,
    required this.bloc,
  });

  @override
  Widget build(BuildContext context) {
    final debouncer = useDebouncer();
    return TextFormField(
      decoration: InputDecoration(
        labelText: pipe.name,
        hintText: pipe.description,
        suffixIcon: Tooltip(
          message: pipe.description,
          child: const Icon(Icons.info),
        ),
      ),
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
