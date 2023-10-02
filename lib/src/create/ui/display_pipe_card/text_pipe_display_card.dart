import 'package:flutter/material.dart';
import 'package:mustachehub/src/create/ui/display_pipe_card/base_pipe_display_card.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class TextPipeDisplayCard extends StatelessWidget {
  final TextPipe? pipe;
  final void Function() onEdit;

  const TextPipeDisplayCard({
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
    );
  }
}
