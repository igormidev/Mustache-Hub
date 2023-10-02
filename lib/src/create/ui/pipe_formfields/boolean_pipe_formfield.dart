import 'package:flutter/material.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class BooleanPipeFormfield extends StatelessWidget {
  final TextEditingController nameEC;
  final TextEditingController descriptionEC;
  final void Function() onDelete;
  final void Function() onSave;
  final GlobalKey<FormState> formKey;
  final BooleanPipe pipe;

  const BooleanPipeFormfield({
    super.key,
    required this.nameEC,
    required this.descriptionEC,
    required this.onDelete,
    required this.onSave,
    required this.formKey,
    required this.pipe,
  });

  @override
  Widget build(BuildContext context) {
    return PipeFormfield(
      formKey: formKey,
      nameEC: nameEC,
      descriptionEC: descriptionEC,
      onDelete: onDelete,
      onSave: onSave,
      pipe: pipe,
    );
  }
}
