import 'package:flutter/material.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/pipe_formfields/base_pipe_formfield.dart';

class BooleanPipeFormfield extends StatelessWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final GlobalKey<FormState> formKey;

  const BooleanPipeFormfield({
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
      formKey: formKey,
      nameEC: nameEC,
      descriptionEC: descriptionEC,
      onDelete: onDelete,
      onSave: onSave,
    );
  }
}