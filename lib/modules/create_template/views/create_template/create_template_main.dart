import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/template.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/content_string/content_string_bloc.dart';
import 'package:mustachehub/modules/create_template/logic/blocs/variables/variables_bloc.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/sections/pipe_creator_section.dart';
import 'package:mustachehub/modules/create_template/views/create_template/components/sections/text_content_section.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:mustachehub/modules/generate_text/logic/blocs/generate_text/generate_text_bloc.dart';
import 'package:mustachehub/modules/generate_text/views/generate_text_tab/generate_text_main.dart';
import 'package:mustachehub/shared/responsive/responsive_splitter.dart';

class CreateTemplateMain extends StatelessWidget {
  const CreateTemplateMain({super.key});

  @override
  Widget build(BuildContext context) {
    final variablesBloc = context.get<VariablesBloc>();
    final contentBloc = context.get<ContentStringBloc>();
    final textBloc = context.get<GenerateTextBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Template'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              final state = variablesBloc.state;

              final partialTemplate = Template(
                texts: state.textPipes,
                booleans: state.booleanPipes,
                models: state.modelPipes,
                content: contentBloc.state.currentText,
              );
              textBloc.add(GenerateTextEvent.selectTemplate(
                template: partialTemplate,
              ));

              showModalBottomSheet(
                context: context,
                useSafeArea: false,
                constraints: const BoxConstraints.expand(),
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 16,
                    ),
                    child: GenerateTextTab(),
                  );
                },
              );
            },
            tooltip: 'Test template',
            icon: const Icon(
              Icons.science,
            ),
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'Save template',
            icon: const Icon(
              Icons.save_rounded,
            ),
          ),
          const SizedBox(width: 16),
        ],
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
