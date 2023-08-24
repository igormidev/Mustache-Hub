import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/bolean_pipe/bolean_pipe_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/display_tile_pipe.dart';

class BooleanPipeDisplayTile extends StatelessWidget {
  final int index;
  final BooleanPipe? pipe;
  const BooleanPipeDisplayTile({
    super.key,
    required this.pipe,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textBloc = context.get<BoleanPipeBloc>();
    if (pipe == null) return SizedBox.fromSize();

    return DisplayTilePipe(
      pipe: pipe,
      index: index,
      onEdit: () {
        textBloc.add(
          BoleanPipeEvent.startEditingPipe(pipeIndex: index),
        );
      },
    );
  }
}
