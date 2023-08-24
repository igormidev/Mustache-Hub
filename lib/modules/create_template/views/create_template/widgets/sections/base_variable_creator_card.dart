import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/views/create_template/create_template_main.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:mustachehub/shared/is_item_selected_value_listenable.dart';

class PipeCreationHeader extends StatelessWidget {
  final String headerTitle;
  final String subtitleSubtitle;
  const PipeCreationHeader({
    super.key,
    required this.headerTitle,
    required this.subtitleSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: CustomHeader(
          headerTitle: headerTitle,
          headerSubtitle: subtitleSubtitle,
          color: context.scheme.primary,
        ),
      ),
    );
  }
}

enum ListType { listviewBuilder, sliverBuildDelegate }

class BaseVariableCreatorCard<T extends Pipe> extends HookWidget {
  final String addNewText;
  final Widget Function(
    T pipe,
    List<T>? Function(T pipe) updateListCallback,
    void Function() onDeleteItem,
  ) editPipeBuilder;
  final Widget Function(
    T pipe,
    void Function() onEditSelec,
  ) pipeBuilder;
  final T Function() generateNewPipe;

  final ListType type;

  const BaseVariableCreatorCard({
    super.key,
    required this.addNewText,
    required this.editPipeBuilder,
    required this.pipeBuilder,
    required this.generateNewPipe,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final pipesState = useState(<T>[]);
    final pipes = pipesState.value;

    return HookBuilder(
      builder: (context) {
        final indexSelecionado = useValueNotifier<int?>(null);

        Widget widgetBuilder(int index) {
          if (pipes.length == index) {
            if (indexSelecionado.value != null) return SizedBox.fromSize();
            return AddNewButton(
              onTap: () {
                final lenght = pipesState.value.length;
                pipesState.value = [...pipesState.value, generateNewPipe()];
                indexSelecionado.value = lenght;
              },
              text: addNewText,
            );
          }

          void onEditSelec() {
            indexSelecionado.value = index;
          }

          return IsSelectedValueListenable(
            index: index,
            valueListenable: indexSelecionado,
            builder: (context, isSelected) {
              final pipe = pipes[index];

              if (isSelected) {
                List<T>? listUpdate(T pipe) {
                  final innerIndex = indexSelecionado.value;
                  if (innerIndex == null) return null;

                  final newList = [...pipesState.value];
                  newList[innerIndex] = pipe;
                  pipesState.value = newList;
                  indexSelecionado.value = null;
                  return newList;
                }

                void onDeleteItem() {
                  final innerIndex = indexSelecionado.value;
                  if (innerIndex == null) return;

                  final newList = [...pipesState.value];
                  newList.removeAt(innerIndex);
                  pipesState.value = newList;
                  indexSelecionado.value = null;
                }

                return editPipeBuilder(pipe, listUpdate, onDeleteItem);
              }

              return pipeBuilder(pipe, onEditSelec);
            },
          );
        }

        return switch (type) {
          ListType.listviewBuilder => ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: pipes.length + 1,
              itemBuilder: (context, index) {
                return widgetBuilder(index);
              },
            ),
          ListType.sliverBuildDelegate => SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return widgetBuilder(index);
              }, childCount: pipes.length + 1),
            ),
        };
      },
    );
  }
}
