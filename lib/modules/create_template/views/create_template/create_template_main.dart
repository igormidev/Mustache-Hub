import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/pipe_creator_section.dart';
import 'package:mustachehub/modules/create_template/views/create_template/widgets/sections/text_content_section.dart';
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
