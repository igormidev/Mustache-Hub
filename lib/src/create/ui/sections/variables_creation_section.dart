import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/ui/headers/base_sliver_pipe_creation_header.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/boolean_variable_creation_card.dart';
import 'package:mustachehub/src/create/ui/variable_creator_card/text_variable_creation_card.dart';

class VariablesCreationSection extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  VariablesCreationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.get<VariablesCubit>();
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
                  bloc.updateTextVariables(textPipes: pipes);
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
                  bloc.updateBooleanVariables(booleanPipes: pipes);
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
