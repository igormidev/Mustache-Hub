import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/base_variable_creator_card.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/pipe_creator_section.dart';

class ModelPipeFormfield extends StatelessWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final GlobalKey<FormState> formKey;
  const ModelPipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: GlobalKey<FormState>(debugLabel: 'Mano ${Random().nextInt(40)}'),
      nameEC: nameEC,
      descriptionEC: descriptionEC,
      onDelete: onDelete,
      onSave: onSave,
      children: [
        Text(
          'Add texts variables in model:',
          style: context.texts.titleMedium,
        ),
        TextVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey:
              GlobalKey<FormState>(debugLabel: 'Mano ${Random().nextInt(400)}'),
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add boolean variables in model:',
          style: context.texts.titleMedium,
        ),
        BooleanVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey:
              GlobalKey<FormState>(debugLabel: 'Mano ${Random().nextInt(400)}'),
        ),
        const SizedBox(height: 6),
        const Divider(),
        Text(
          'Add other list of models variable in model:',
          style: context.texts.titleMedium,
        ),
        ModelVariablesCreationWidget(
          type: ListType.listviewBuilder,
          formKey:
              GlobalKey<FormState>(debugLabel: 'Mano ${Random().nextInt(400)}'),
        ),
      ],
    );
  }
}
