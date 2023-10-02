import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mason/mason.dart';
import 'package:mustachehub/src/create/interactor/mixins/default_id_caster.dart';
import 'package:mustachehub/src/create/ui/display_pipe_card/model_pipe_display_card.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/model_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class ModelVariablesCreationWidget extends HookWidget with DefaultIdCaster {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<ModelPipe> initialList;
  final double maxWidth;
  final void Function(List<ModelPipe> pipes) retriveCreatedPipes;

  const ModelVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.retriveCreatedPipes,
    required this.initialList,
    required this.maxWidth,
    required this.formKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameEC = useTextEditingController();
    final descriptionEC = useTextEditingController();

    return BaseVariableCreatorCard<ModelPipe>(
      addNewText: 'Add a new model variable',
      retriveCreatedPipes: retriveCreatedPipes,
      initialList: initialList,
      type: type,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: type,
          child: ModelPipeFormfield(
            formKey: formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            maxWidth: maxWidth,
            onSave: (
              textPipes,
              booleanPipes,
              modelPipes,
            ) {
              return saveEditFunc(
                ModelPipe(
                  name: nameEC.text,
                  description: descriptionEC.text,
                  mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                      nameEC.text.camelCase,
                  textPipes: textPipes,
                  booleanPipes: booleanPipes,
                  modelPipes: modelPipes,
                ),
              );
            },
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return ModelPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () => ModelPipe.emptyPlaceholder(),
    );
  }
}
