import 'package:flutter/material.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';
import 'package:mustachehub/src/create/ui/display_pipe_card/base_pipe_display_card.dart';

class ModelPipeDisplayCard extends StatelessWidget {
  final ModelPipe? pipe;
  final void Function() onEdit;

  const ModelPipeDisplayCard({
    super.key,
    required this.pipe,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    if (pipe == null) return SizedBox.fromSize();

    return BasePipeDisplayCard(
      pipe: pipe,
      onEdit: onEdit,
      children: const [],
    );
  }
}
