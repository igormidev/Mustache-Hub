import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/models/models_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/formfields/pipe_formfield.dart';

class ModelPipeFormfield extends StatelessWidget {
  final ModelPipe pipe;
  const ModelPipeFormfield({super.key, required this.pipe});

  @override
  Widget build(BuildContext context) {
    final modelsBloc = context.get<ModelsBloc>();

    return PipeFormfield<ModelsBloc, ModelsState, ModelPipe>(
      pipe: pipe,
      pipeSelector: (state) => state.mapOrNull(
        editing: (v) => v.editingPipe,
      ),
      onNameChanged: (name) {
        modelsBloc.add(ModelsEvent.updateEditPipe(
          pipe: pipe.copyWith(
            name: name,
          ),
        ));
      },
      onDescriptionChanged: (description) {
        modelsBloc.add(ModelsEvent.updateEditPipe(
          pipe: pipe.copyWith(
            description: description,
          ),
        ));
      },
      onDelete: () {
        modelsBloc.add(const ModelsEvent.deletePipe());
      },
      onSave: (name, description) {
        modelsBloc.add(ModelsEvent.finishPipeEdit(
          pipe: ModelPipe(
            name: name,
            description: description,
            values: const [],
          ),
        ));
      },
      children: const [
        SizedBox(height: 8),
        MapSection(),
      ],
    );
  }
}

class MapSection extends StatelessWidget {
  const MapSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        alignment: WrapAlignment.end,
        crossAxisAlignment: WrapCrossAlignment.end,
        runSpacing: 10,
        spacing: 10,
        children: [
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Text'),
            icon: const Icon(Icons.add),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Boolean'),
            icon: const Icon(Icons.add),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: const Text('Other map'),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
