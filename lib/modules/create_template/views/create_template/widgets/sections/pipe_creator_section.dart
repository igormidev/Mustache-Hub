import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_pipe_card/boolean_pipe_display_card.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_pipe_card/model_pipe_display_card.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/display_pipe_card/text_pipe_display_card.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/pipe_formfields/boolean_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/pipe_formfields/model_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/pipe_formfields/text_pipe_formfield.dart';
import 'base_variable_creator_card.dart';

class VariablesCreationSection extends StatelessWidget {
  const VariablesCreationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          const PipeCreationHeader(
            headerTitle: 'Text variables',
            subtitleSubtitle:
                'A text variable that the user will need to fill in.',
          ),
          TextVariablesCreationWidget(formKey: GlobalKey<FormState>()),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Divider(),
            ),
          ),
          const PipeCreationHeader(
            headerTitle: 'Boolean variables (True or false)',
            subtitleSubtitle:
                'Boolean variables are characterized by being able '
                'to assume a value of true or false. You can use this '
                'conditional to make logic in the construction of your text.',
          ),
          BooleanVariablesCreationWidget(formKey: GlobalKey<FormState>()),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Divider(),
            ),
          ),
          const PipeCreationHeader(
            headerTitle: 'List of models',
            subtitleSubtitle:
                'A list of templates that the user will need to fill '
                'in each template field. A model can be like, for '
                'example, a person with a name, age, height, etc...',
          ),
          ModelVariablesCreationWidget(
            formKey: GlobalKey<FormState>(),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}

class TextVariablesCreationWidget extends HookWidget {
  final ListType type;
  final GlobalKey<FormState> formKey;
  const TextVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.formKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameEC = useTextEditingController();
    final descriptionEC = useTextEditingController();
    return BaseVariableCreatorCard<TextPipe>(
      addNewText: 'Add a new text variable',
      type: type,
      editPipeBuilder: (pipe, updateListCallback, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: type,
          child: TextPipeFormfield(
            formKey: formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            onSave: () => updateListCallback(
              TextPipe(name: nameEC.text, description: descriptionEC.text),
            ),
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return TextPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () {
        return const TextPipe(name: '', description: '');
      },
    );
  }
}

class BooleanVariablesCreationWidget extends HookWidget {
  final GlobalKey<FormState> formKey;
  final ListType type;
  const BooleanVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.formKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameEC = useTextEditingController();
    final descriptionEC = useTextEditingController();
    return BaseVariableCreatorCard<BooleanPipe>(
      addNewText: 'Add a new true/false variable',
      type: type,
      editPipeBuilder: (pipe, updateListCallback, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: type,
          child: BooleanPipeFormfield(
            formKey: formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            onSave: () => updateListCallback(
              BooleanPipe(name: nameEC.text, description: descriptionEC.text),
            ),
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return BooleanPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () {
        return const BooleanPipe(name: '', description: '');
      },
    );
  }
}

class ModelVariablesCreationWidget extends HookWidget {
  final GlobalKey<FormState> formKey;
  final ListType type;
  const ModelVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.formKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameEC = useTextEditingController();
    final descriptionEC = useTextEditingController();
    return BaseVariableCreatorCard<ModelPipe>(
      addNewText: 'Add a new model variable',
      type: type,
      editPipeBuilder: (pipe, updateListCallback, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: type,
          child: ModelPipeFormfield(
            formKey: formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            onSave: () => updateListCallback(
              ModelPipe(
                name: nameEC.text,
                description: descriptionEC.text,
                values: const [],
              ),
            ),
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return ModelPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () {
        return const ModelPipe(name: '', description: '', values: []);
      },
    );
  }
}
