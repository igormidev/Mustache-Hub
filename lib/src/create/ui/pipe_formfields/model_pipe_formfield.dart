import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/boolean_variable_creation_card.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/model_variable_creation_card.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/text_variable_creation_card.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

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
  final ModelPipe pipe;
  final double maxWidth;

  ModelPipeFormfield({
    super.key,
    required this.nameEC,
    required this.maxWidth,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
  })  : textPipes = [...pipe.textPipes],
        booleanPipes = [...pipe.booleanPipes],
        modelPipes = [...pipe.modelPipes];

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
      pipe: pipe,
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
          maxWidth: maxWidth,
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
