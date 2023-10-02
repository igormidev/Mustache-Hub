import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/src/create/ui/widgets/add_new_dotted_button.dart';
import 'package:mustachehub/src/design_system/elements/is_item_selected_value_listenable.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

enum ListType { listviewBuilder, sliverBuildDelegate }

class BaseVariableCreatorCard<T extends Pipe> extends HookWidget {
  final String addNewText;
  final Widget Function(
    T pipe,
    void Function(T pipe) saveEditFunc,
    void Function() onDeleteItem,
  ) editPipeBuilder;
  final Widget Function(
    T pipe,
    void Function() onEditSelec,
  ) pipeBuilder;
  final T Function() generateNewPipe;

  final ListType type;

  final List<T> initialList;

  final void Function(List<T> pipes) retriveCreatedPipes;

  const BaseVariableCreatorCard({
    super.key,
    required this.addNewText,
    required this.editPipeBuilder,
    required this.pipeBuilder,
    required this.generateNewPipe,
    required this.type,
    required this.initialList,
    required this.retriveCreatedPipes,
  });

  @override
  Widget build(BuildContext context) {
    final pipesState = useState(initialList);
    final pipes = pipesState.value;

    return HookBuilder(
      builder: (context) {
        final selectedIndex = useValueNotifier<int?>(null);

        Widget widgetBuilder(int index) {
          if (pipes.length == index) {
            if (selectedIndex.value != null) return SizedBox.fromSize();
            return AddNewButton(
              onTap: () {
                final lenght = pipesState.value.length;
                pipesState.value = [...pipesState.value, generateNewPipe()];
                selectedIndex.value = lenght;
              },
              text: addNewText,
            );
          }

          void onEditSelec() {
            selectedIndex.value = index;
          }

          return IsSelectedValueListenable(
            index: index,
            valueListenable: selectedIndex,
            builder: (context, isSelected) {
              final pipe = pipes[index];

              if (isSelected) {
                void listUpdate(T pipe) {
                  final innerIndex = selectedIndex.value;
                  if (innerIndex == null) return;

                  final newList = [...pipesState.value];
                  newList[innerIndex] = pipe;
                  pipesState.value = newList;
                  selectedIndex.value = null;
                  return retriveCreatedPipes(newList);
                }

                void onDeleteItem() {
                  final innerIndex = selectedIndex.value;
                  if (innerIndex == null) return;

                  final newList = [...pipesState.value];
                  newList.removeAt(innerIndex);
                  pipesState.value = newList;
                  selectedIndex.value = null;
                  return retriveCreatedPipes(newList);
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
