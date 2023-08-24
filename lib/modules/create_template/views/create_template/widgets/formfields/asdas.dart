// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:mustachehub/logic/entities/pipe.dart';
// import 'package:mustachehub/modules/create_template/views/create_template/create_template_main.dart';
// import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_pipe_card/text_pipe_display_card.dart';
// import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/text_pipe_display_tile.dart';
// import 'package:mustachehub/shared/custom_header.dart';
// import 'package:mustachehub/shared/is_item_selected_value_listenable.dart';

// class NewModelTipeCard extends HookWidget {
//   const NewModelTipeCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final textPipes = useState(<TextPipe>[]);
//     final booleanPipes = useState(<TextPipe>[]);

//     return Container();
//   }
// }

// class PipeCreationSection extends StatelessWidget {
//   const PipeCreationSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       child: CustomScrollView(
//         slivers: [
//           NewBasePipeCreationSection(
//             headerTitle: 'Text variables',
//             subtitleSubtitle:
//                 'A text variable that the user will need to fill in.',
//             addNewText: 'Add a new text variable',
//             editPipeBuilder: (pipe, updateListCallback, onUnSelect) {},
//             pipeBuilder: (onEditSelec) {
//               return TextPipeDisplayCard(
//                 pipe: pipe,
//                 index: index,
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// class PipeCreationHeader extends StatelessWidget {
//   final String headerTitle;
//   final String subtitleSubtitle;
//   const PipeCreationHeader({
//     super.key,
//     required this.headerTitle,
//     required this.subtitleSubtitle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: Padding(
//         padding: const EdgeInsets.only(top: 4.0),
//         child: CustomHeader(
//           headerTitle: headerTitle,
//           headerSubtitle: subtitleSubtitle,
//         ),
//       ),
//     );
//   }
// }

// class NewBasePipeCreationSection<T extends Pipe> extends HookWidget {
//   final String headerTitle;
//   final String subtitleSubtitle;
//   final String addNewText;
//   final Widget Function(
//     T pipe,
//     List<T>? Function(T pipe) updateListCallback,
//     void Function() onUnSelect,
//   ) editPipeBuilder;
//   final Widget Function(
//     T pipe,
//     void Function() onEditSelec,
//   ) pipeBuilder;
//   final T Function() generateNewPipe;

//   const NewBasePipeCreationSection({
//     super.key,
//     required this.headerTitle,
//     required this.subtitleSubtitle,
//     required this.addNewText,
//     required this.editPipeBuilder,
//     required this.pipeBuilder,
//     required this.generateNewPipe,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final pipesState = useState(<T>[]);
//     final pipes = pipesState.value;

//     return HookBuilder(
//       builder: (context) {
//         final indexSelecionado = useValueNotifier<int?>(null);

//         return SliverList(
//           delegate: SliverChildBuilderDelegate((context, index) {
//             if (pipes.length == index) {
//               if (indexSelecionado.value != null) return SizedBox.fromSize();
//               return AddNewButton(
//                   onTap: () {
//                     pipes.add(generateNewPipe());
//                   },
//                   text: addNewText);
//             }

//             void onSelect() {
//               indexSelecionado.value = index;
//             }

//             return IsSelectedValueListenable(
//               index: index,
//               valueListenable: indexSelecionado,
//               builder: (context, isSelected) {
//                 final pipe = pipes[index];

//                 if (isSelected) {
//                   List<T>? listUpdate(T pipe) {
//                     final innerIndex = indexSelecionado.value;
//                     if (innerIndex == null) return null;

//                     final newList = [...pipesState.value];
//                     newList[innerIndex] = pipe;
//                     pipesState.value = newList;
//                     return newList;
//                   }

//                   void onUnSelect() {
//                     indexSelecionado.value = null;
//                   }

//                   return editPipeBuilder(pipe, listUpdate, onUnSelect);
//                 }

//                 return pipeBuilder(pipe, onSelect);
//               },
//             );
//           }, childCount: pipes.length + 1),
//         );
//       },
//     );
//   }
// }
