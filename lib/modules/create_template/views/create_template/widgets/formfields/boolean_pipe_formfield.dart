import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/bolean_pipe/bolean_pipe_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/formfields/pipe_formfield.dart';

class BooleanPipeFormfield extends StatelessWidget {
  final BooleanPipe pipe;
  const BooleanPipeFormfield({super.key, required this.pipe});

  @override
  Widget build(BuildContext context) {
    final booleanBloc = context.get<BoleanPipeBloc>();

    return PipeFormfield<BoleanPipeBloc, BoleanPipeState, BooleanPipe>(
      pipe: pipe,
      pipeSelector: (state) => state.mapOrNull(
        editing: (v) => v.editingPipe,
      ),
      onNameChanged: (name) {
        booleanBloc.add(BoleanPipeEvent.updateEditPipe(
          pipe: pipe.copyWith(
            name: name,
          ),
        ));
      },
      onDescriptionChanged: (description) {
        booleanBloc.add(BoleanPipeEvent.updateEditPipe(
          pipe: pipe.copyWith(
            description: description,
          ),
        ));
      },
      onDelete: () {
        booleanBloc.add(const BoleanPipeEvent.deletePipe());
      },
      onSave: (name, description) {
        booleanBloc.add(BoleanPipeEvent.finishPipeEdit(
          pipe: BooleanPipe(
            name: name,
            description: description,
          ),
        ));
      },
    );
  }
}
