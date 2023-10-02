import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mason/mason.dart';
import 'package:mustachehub/src/create/interactor/mixins/default_id_caster.dart';
import 'package:mustachehub/src/create/ui/display_pipe_card/text_pipe_display_card.dart';
import 'package:mustachehub/src/create/ui/option_widgets/text_pipe_options.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/pipe_formfields/text_pipe_formfield.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/base_variable_creation_card.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class TextVariablesCreationWidget extends HookWidget with DefaultIdCaster {
  final ListType type;
  final GlobalKey<FormState> formKey;
  final void Function(List<TextPipe> pipes) retriveCreatedPipes;
  final List<TextPipe> initialList;

  const TextVariablesCreationWidget({
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

    return BaseVariableCreatorCard<TextPipe>(
      addNewText: 'Add a new text variable',
      retriveCreatedPipes: retriveCreatedPipes,
      initialList: initialList,
      type: type,
      editPipeBuilder: (pipe, saveEditFunc, onDeleteItem) {
        nameEC.text = pipe.name;
        descriptionEC.text = pipe.description;

        return HookBuilder(
          builder: (context) {
            final isRequired = useState(true);

            useEffect(() {
              isRequired.value = pipe.isRequired;
              return null;
            }, const []);

            return PipeFormFieldCardWrapper(
              type: type,
              child: TextPipeFormfield(
                formKey: formKey,
                nameEC: nameEC,
                descriptionEC: descriptionEC,
                onDelete: onDeleteItem,
                pipe: pipe,
                optionWidget: TextPipeOptions(
                  isRequired: isRequired,
                ),
                onSave: () => saveEditFunc(
                  TextPipe(
                    name: nameEC.text,
                    description: descriptionEC.text,
                    mustacheName: tryValidCast(nameEC.text)?.camelCase ??
                        nameEC.text.camelCase,
                    isRequired: isRequired.value,
                  ),
                ),
              ),
            );
          },
        );
      },
      pipeBuilder: (pipe, onEditSelec) {
        return TextPipeDisplayCard(pipe: pipe, onEdit: onEditSelec);
      },
      generateNewPipe: () {
        return TextPipe.emptyPlaceholder();
      },
    );
  }
}
