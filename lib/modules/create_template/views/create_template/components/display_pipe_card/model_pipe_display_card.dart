import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/display_pipe_card/base_pipe_display_card.dart';
import 'package:mustachehub/modules/home/views/home/home_main.dart';

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
      children: [
        _ModelTreeViewWidget(pipe: pipe!),
      ],
    );
  }
}

class _ModelTreeViewWidget extends StatefulWidget {
  final ModelPipe pipe;
  const _ModelTreeViewWidget({required this.pipe});

  @override
  State<_ModelTreeViewWidget> createState() => _ModelTreeViewWidgetState();
}

class _ModelTreeViewWidgetState extends State<_ModelTreeViewWidget> {
  late final TreeController<MyNode> treeController;

  @override
  void initState() {
    super.initState();
    treeController = TreeController<MyNode>(
      roots: [
        ...widget.pipe.textPipes.map((text) {
          return MyNode(title: 'TEXT | ${text.name}');
        }).toList(),
        ...widget.pipe.booleanPipes.map((boolean) {
          return MyNode(title: 'BOOLEAN | ${boolean.name}');
        }).toList(),
      ],
      childrenProvider: (MyNode node) => node.children,
    );
  }

  @override
  void dispose() {
    // Remember to dispose your tree controller to release resources.
    treeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TreeView<MyNode>(
      // This controller is used by tree views to build a flat representation
      // of a tree structure so it can be lazy rendered by a SliverList.
      // It is also used to store and manipulate the different states of the
      // tree nodes.
      treeController: treeController,
      shrinkWrap: true,
      // Provide a widget builder callback to map your tree nodes into widgets.
      nodeBuilder: (BuildContext context, TreeEntry<MyNode> entry) {
        return MyTreeTile(
          key: ValueKey(entry.node),
          entry: entry,
          onTap: () => treeController.toggleExpansion(entry.node),
        );
      },
    );
  }
}
