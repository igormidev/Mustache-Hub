import 'package:flutter/material.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/display_pipe_card/base_pipe_display_card.dart';

class BooleanPipeDisplayCard extends StatelessWidget {
  final BooleanPipe? pipe;
  final void Function() onEdit;

  const BooleanPipeDisplayCard({
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
