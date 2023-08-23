import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/text_pipe/text_pipe_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/formfields/pipe_formfield.dart';

class TextPipeFormfield extends StatelessWidget {
  final TextPipe pipe;
  const TextPipeFormfield({super.key, required this.pipe});

  @override
  Widget build(BuildContext context) {
    final textBloc = context.get<TextPipeBloc>();

    return PipeFormfield<TextPipeBloc, TextPipeState, TextPipe>(
      pipe: pipe,
      pipeSelector: (state) => state.mapOrNull(
        editing: (v) => v.editingPipe,
      ),
      onNameChanged: (name) {
        textBloc.add(TextPipeEvent.updateEditPipe(
          pipe: pipe.copyWith(
            name: name,
          ),
        ));
      },
      onDescriptionChanged: (description) {
        textBloc.add(TextPipeEvent.updateEditPipe(
          pipe: pipe.copyWith(
            description: description,
          ),
        ));
      },
      onDelete: () {
        textBloc.add(const TextPipeEvent.deletePipe());
      },
      onSave: (name, description) {
        textBloc.add(TextPipeEvent.finishPipeEdit(
          pipe: TextPipe(
            name: name,
            description: description,
          ),
        ));
      },
      children: const [],
    );
  }
}
