import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/models/models_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/display_tile_pipe.dart';

class ModelPipeDisplayTile extends StatelessWidget {
  final int index;
  final ModelPipe? pipe;
  const ModelPipeDisplayTile({
    super.key,
    required this.pipe,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final textBloc = context.get<ModelsBloc>();
    if (pipe == null) return SizedBox.fromSize();

    return DisplayTilePipe(
      pipe: pipe,
      index: index,
      onEdit: () {
        textBloc.add(
          ModelsEvent.startEditingPipe(pipeIndex: index),
        );
      },
    );
  }
}
