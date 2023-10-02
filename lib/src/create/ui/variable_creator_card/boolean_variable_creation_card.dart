import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mason/mason.dart';
import 'package:mustachehub/src/create/interactor/mixins/default_id_caster.dart';
import 'package:mustachehub/src/create/ui/display_pipe_card/boolean_pipe_display_card.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/boolean_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class BooleanVariablesCreationWidget extends HookWidget with DefaultIdCaster {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final List<BooleanPipe> initialList;
  final void Function(List<BooleanPipe> pipes) retriveCreatedPipes;

  const BooleanVariablesCreationWidget({
    this.type = ListType.sliverBuildDelegate,
    required this.retriveCreatedPipes,
    required this.initialList,
    required this.formKey,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final nameEC = useTextEditingController();
    final descriptionEC = useTextEditingController();

    return BaseVariableCreatorCard<BooleanPipe>(
      addNewText: 'Add a new true/false variable',
      retriveCreatedPipes: retriveCreatedPipes,
      initialList: initialList,
      type: type,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;
        return PipeFormFieldCardWrapper(
          type: type,
          child: BooleanPipeFormfield(
            formKey: formKey,
            nameEC: nameEC,
            descriptionEC: descriptionEC,
            onDelete: onDeleteItem,
            pipe: pipe,
            onSave: () => saveEditFunc(
              BooleanPipe(
                name: nameEC.text,
                description: descriptionEC.text,
                mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                    nameEC.text.camelCase,
              ),
            ),
          ),
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return BooleanPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () {
        return BooleanPipe.emptyPlaceholder();
      },
    );
  }
}
