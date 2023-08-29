import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/sections/base_variable_creator_card.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/sections/pipe_creator_section.dart';

class ModelPipeFormfield extends StatelessWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function(
    List<TextPipe> textPipes,
    List<BooleanPipe> booleanPipes,
    List<ModelPipe> modelPipes,
  ) onSave;
  final GlobalKey<FormState> formKey;
  final ModelPipe variable;

  ModelPipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.variable,
  })  : textPipes = [...variable.textPipes],
        booleanPipes = [...variable.booleanPipes],
        modelPipes = [...variable.modelPipes];

  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: formKey,
      nameEC: nameEC,
      descriptionEC: descriptionEC,
      onDelete: onDelete,
      onSave: () => onSave(textPipes, booleanPipes, modelPipes),
      children: [
        Text(
          'Add texts variables in model:',
          style: context.texts.titleMedium,
        ),
        TextVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey: formKey,
          initialList: textPipes,
          retriveCreatedPipes: (pipes) {
            textPipes.clear();
            textPipes.addAll(pipes);
          },
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add boolean variables in model:',
          style: context.texts.titleMedium,
        ),
        BooleanVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey: formKey,
          initialList: booleanPipes,
          retriveCreatedPipes: (pipes) {
            booleanPipes.clear();
            booleanPipes.addAll(pipes);
          },
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add other list of models variable in model:',
          style: context.texts.titleMedium,
        ),
        ModelVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey: formKey,
          initialList: modelPipes,
          retriveCreatedPipes: (pipes) {
            modelPipes.clear();
            modelPipes.addAll(pipes);
          },
        ),
      ],
    );
  }
}
