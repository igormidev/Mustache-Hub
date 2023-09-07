import 'package:flutter/material.dart';
import 'package:mason/mason.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/modules/create_template/core/mixins/default_id_caster.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/variables/variables_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/display_pipe_card/boolean_pipe_display_card.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/display_pipe_card/model_pipe_display_card.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/display_pipe_card/text_pipe_display_card.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/option_widgets/text_pipe_options.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/pipe_formfields/base_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/pipe_formfields/boolean_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/pipe_formfields/model_pipe_formfield.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/pipe_formfields/text_pipe_formfield.dart';
import 'base_variable_creator_card.dart';

class VariablesCreationSection extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  VariablesCreationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<VariablesBloc>();
    final state = bloc.state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Form(
          key: formKey,
          child: CustomScrollView(
            slivers: [
              const PipeCreationHeader(
                headerTitle: 'Text variables',
                subtitleSubtitle:
                    'A text variable that the user will need to fill in.',
              ),
              TextVariablesCreationWidget(
                formKey: formKey,
                initialList: state.textPipes,
                retriveCreatedPipes: (pipes) {
                  bloc.add(
                    VariablesEvent.updateTextVariables(textPipes: pipes),
                  );
                },
              ),
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
              BooleanVariablesCreationWidget(
                formKey: formKey,
                initialList: state.booleanPipes,
                retriveCreatedPipes: (pipes) {
                  bloc.add(
                    VariablesEvent.updateBooleanVariables(booleanPipes: pipes),
                  );
                },
              ),
              // const SliverToBoxAdapter(
              //   child: Padding(
              //     padding: EdgeInsets.only(top: 8),
              //     child: Divider(),
              //   ),
              // ),
              // const PipeCreationHeader(
              //   headerTitle: 'List of models',
              //   subtitleSubtitle:
              //       'A list of templates that the user will need to fill '
              //       'in each template field. A model can be like. For '
              //       'example: a person with a name, age, height, etc...',
              // ),
              // ModelVariablesCreationWidget(
              //   formKey: formKey,
              //   initialList: state.modelPipes,
              //   maxWidth: maxWidth,
              //   retriveCreatedPipes: (pipes) {
              //     bloc.add(
              //       VariablesEvent.updateModelVariables(modelPipes: pipes),
              //     );
              //   },
              // ),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
            ],
          )),
    );
  }
}

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
