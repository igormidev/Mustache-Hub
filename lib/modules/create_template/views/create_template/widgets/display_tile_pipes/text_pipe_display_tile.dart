import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/text_pipe/text_pipe_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/display_tile_pipe.dart';

class TextPipeDisplayTile extends StatelessWidget {
  final int index;
  final TextPipe? pipe;
  const TextPipeDisplayTile({
    super.key,
    required this.pipe,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textBloc = context.get<TextPipeBloc>();
    if (pipe == null) return SizedBox.fromSize();

    return DisplayTilePipe(
      pipe: pipe,
      index: index,
      onEdit: () {
        textBloc.add(
          TextPipeEvent.startEditingPipe(pipeIndex: index),
        );
      },
    );
  }
}
