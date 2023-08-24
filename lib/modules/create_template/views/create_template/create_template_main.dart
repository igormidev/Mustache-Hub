import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/bolean_pipe/bolean_pipe_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/models/models_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/text_pipe/text_pipe_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/boolean_pipe_display_tile.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/model_pipe_display_tile.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_tile_pipes/text_pipe_display_tile.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/formfields/boolean_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/formfields/model_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/formfields/text_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/pipe_creator_section.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/text_content_section.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mustachehub/shared/responsive/responsive_splitter.dart';

class CreateTemplateMain extends StatelessWidget {
  const CreateTemplateMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Template'),
      ),
      body: ResponsiveSplitter(
        compactSize: Container(),
        mediumSize: const _ScreenExpandedSize(),
        expandedSize: const _ScreenExpandedSize(),
      ),
    );
  }
}

class _ScreenExpandedSize extends StatelessWidget {
  const _ScreenExpandedSize();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: VariablesCreationSection(),
        ),
        const VerticalDivider(width: 0),
        const Expanded(
          child: TextContentSection(),
        ),
      ],
    );
  }
}

class BasePipeCreationSection<B extends StateStreamable<S>, S, T extends Pipe> {
  final String headerTitle;
  final String subtitleSubtitle;
  final String addNewText;
  final List<T> Function(S) selector;
  final bool? Function(S) isEditing;
  final int? Function(S) selectedIndex;
  final void Function() onAddNewTap;
  final Widget Function(T pipe) editPipeBuilder;
  final Widget Function(T pipe, int index) pipeBuilder;

  const BasePipeCreationSection({
    required this.headerTitle,
    required this.subtitleSubtitle,
    required this.addNewText,
    required this.selector,
    required this.isEditing,
    required this.selectedIndex,
    required this.onAddNewTap,
    required this.editPipeBuilder,
    required this.pipeBuilder,
  });

  List<Widget> build(BuildContext context) {
    return [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: CustomHeader(
            headerTitle: headerTitle,
            headerSubtitle: subtitleSubtitle,
          ),
        ),
      ),
      BlocSelector<B, S, List<T>>(
        bloc: context.get<B>(),
        selector: selector,
        builder: (context, pipes) {
          final state = context.get<B>().state;
          final isEditing = this.isEditing(state) ?? false;

          final editingPipeIndex = this.selectedIndex(state);

          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              if (pipes.length == index) {
                if (isEditing) return SizedBox.fromSize();
                return AddNewButton(onTap: onAddNewTap, text: addNewText);
              }

              if (isEditing && index == editingPipeIndex) {
                return editPipeBuilder(pipes[index]);
              }

              return pipeBuilder(pipes[index], index);
            }, childCount: pipes.length + 1),
          );
        },
      ),
    ];
  }
}

class PipeCreationSection extends HookWidget {
  const PipeCreationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController();
    final textBloc = context.get<TextPipeBloc>();
    final booleanBloc = context.get<BoleanPipeBloc>();
    final modelBloc = context.get<ModelsBloc>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        controller: controller,
        slivers: [
          ...BasePipeCreationSection<ModelsBloc, ModelsState, ModelPipe>(
            headerTitle: 'List of models',
            subtitleSubtitle:
                'A list of templates that the user will need to fill '
                'in each template field. A model can be like, for '
                'example, a person with a name, age, height, etc...',
            addNewText: 'Add a new model variable',
            selector: (state) => state.pipes,
            isEditing: (s) => s.mapOrNull(editing: (_) => true),
            selectedIndex: (s) =>
                s.mapOrNull(editing: (v) => v.editingPipeIndex),
            onAddNewTap: () => modelBloc.add(const ModelsEvent.createNewPipe()),
            editPipeBuilder: (pipe) {
              return ModelPipeFormfield(pipe: pipe);
            },
            pipeBuilder: (pipe, index) {
              return ModelPipeDisplayTile(pipe: pipe, index: index);
            },
          ).build(context),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Divider(),
            ),
          ),
          ...BasePipeCreationSection<TextPipeBloc, TextPipeState, TextPipe>(
            headerTitle: 'Text variables',
            subtitleSubtitle:
                'A text variable that the user will need to fill in.',
            addNewText: 'Add a new text variable',
            selector: (state) => state.pipes,
            isEditing: (s) => s.mapOrNull(editing: (_) => true),
            selectedIndex: (s) =>
                s.mapOrNull(editing: (v) => v.editingPipeIndex),
            onAddNewTap: () =>
                textBloc.add(const TextPipeEvent.createNewPipe()),
            editPipeBuilder: (pipe) {
              return TextPipeFormfield(pipe: pipe);
            },
            pipeBuilder: (pipe, index) {
              return TextPipeDisplayTile(pipe: pipe, index: index);
            },
          ).build(context),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Divider(),
            ),
          ),
          ...BasePipeCreationSection<BoleanPipeBloc, BoleanPipeState,
              BooleanPipe>(
            headerTitle: 'Boolean variables (True or false)',
            subtitleSubtitle:
                'Boolean variables are characterized by being able '
                'to assume a value of true or false. You can use this '
                'conditional to make logic in the construction of your text.',
            addNewText: 'Add a new true/false variable',
            selector: (state) => state.pipes,
            isEditing: (s) => s.mapOrNull(editing: (_) => true),
            selectedIndex: (s) =>
                s.mapOrNull(editing: (v) => v.editingPipeIndex),
            onAddNewTap: () =>
                booleanBloc.add(const BoleanPipeEvent.createNewPipe()),
            editPipeBuilder: (pipe) {
              return BooleanPipeFormfield(pipe: pipe);
            },
            pipeBuilder: (pipe, index) {
              return BooleanPipeDisplayTile(pipe: pipe, index: index);
            },
          ).build(context),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
      // TextPipeDisplayTile
    );
  }
}

class AddNewButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const AddNewButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 60,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          onTap: onTap,
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(20),
            dashPattern: const [6, 6],
            color: context.scheme.outlineVariant,
            strokeWidth: 2,
            child: Tooltip(
              message: text,
              child: Container(
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: context.scheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(Icons.add, size: 30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
