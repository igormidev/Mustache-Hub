import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/content_string_cubit.dart';
import 'package:mustachehub/src/create/interactor/cubit/variables_cubit.dart';
import 'package:mustachehub/src/create/interactor/state/content_string_state.dart';
import 'package:mustachehub/src/create/interactor/state/variables_state.dart';
import 'package:mustachehub/src/create/ui/bottom_sheets/template_save_form_bottom_sheet.dart';
import 'package:mustachehub/src/create/ui/pages/create_template_page.dart';
import 'package:mustachehub/src/create/ui/sections/text_content_section.dart';
import 'package:mustachehub/src/create/ui/sections/variables_creation_section.dart';
import 'package:mustachehub/src/create/ui/widgets/create_template_bottom_navigation_bar.dart';
import 'package:mustachehub/src/create/ui/wrappers/set_suggestion_wrapper.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/ui/views/generate_main_view.dart';

class CreateTemplateView extends StatelessWidget {
  const CreateTemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    final payloadCubit = context.get<PayloadCubit>();
    final contentCubit = context.get<ContentStringCubit>();
    return SetSuggestionWrapper(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final willShowTestButton = 750 < width && width <= 1300;

          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Create mustache template'),
              actions: [
                if (willShowTestButton)
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.science_rounded),
                  ),
                const IconSaveTemplate(),
              ],
            ),
            drawer: context.whenSizeOrNull(
              compactSize: const DashboardDrawer(),
            ),
            body: Builder(
              builder: (context) {
                if (width <= 750) {
                  return const CreateTemplatePage();
                } else if (750 < width && width <= 1300) {
                  return Row(
                    children: [
                      Expanded(child: VariablesCreationSection()),
                      const VerticalDivider(width: 20),
                      const Expanded(child: TextContentSection()),
                    ],
                  );
                } else if (1300 < width && width <= 1850) {
                  return Row(
                    children: [
                      Expanded(child: VariablesCreationSection()),
                      const VerticalDivider(width: 20),
                      const Expanded(child: TextContentSection()),
                      const VerticalDivider(width: 20),
                      Expanded(child: Container(color: Colors.green[200])),
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      Expanded(child: VariablesCreationSection()),
                      const VerticalDivider(width: 20),
                      const Expanded(child: TextContentSection()),
                      const VerticalDivider(width: 20),
                      BlocConsumer<VariablesCubit, VariablesState>(
                        bloc: context.get<VariablesCubit>(),
                        listener: (context, state) {
                          payloadCubit.updateContent(
                            content: contentCubit.state.currentText,
                            expectedPayload: ExpectedPayload(
                              textPipes: state.textPipes,
                              booleanPipes: state.booleanPipes,
                              modelPipes: state.modelPipes,
                            ),
                            expectedPayloadDto: null,
                          );
                        },
                        builder: (context, variablesState) {
                          return BlocConsumer<ContentStringCubit,
                              ContentStringState>(
                            bloc: context.get<ContentStringCubit>(),
                            listener: (context, state) {
                              payloadCubit.updateContent(
                                content: state.currentText,
                                expectedPayload: ExpectedPayload(
                                  textPipes: variablesState.textPipes,
                                  booleanPipes: variablesState.booleanPipes,
                                  modelPipes: variablesState.modelPipes,
                                ),
                                expectedPayloadDto: null,
                              );
                            },
                            builder: (context, contentState) {
                              return Expanded(
                                flex: 2,
                                child: TextOutputGeneratorScaffold(
                                  content: contentState.currentText,
                                  generatorData: ExpectedPayload(
                                    textPipes: variablesState.textPipes,
                                    booleanPipes: variablesState.booleanPipes,
                                    modelPipes: variablesState.modelPipes,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  );
                }
              },
            ),
            bottomNavigationBar: width <= 750
                ? const CreateTemplateBottomNavigationBar()
                : SizedBox.fromSize(),
          );
        },
      ),
    );
  }
}
