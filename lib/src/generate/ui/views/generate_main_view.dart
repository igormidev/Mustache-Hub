import 'package:flutter/material.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/generate/interactor/cubits/content_cubit.dart';
import 'package:mustachehub/src/generate/interactor/cubits/payload_cubit.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/states/payload_state.dart';
import 'package:mustachehub/src/generate/ui/pages/template_input_form_page.dart';
import 'package:mustachehub/src/generate/ui/pages/text_output_page.dart';
import 'package:mustachehub/src/generate/ui/widgets/generate_tab_bar.dart';
import 'package:mustachehub/src/dashboard/ui/widgets/dashboard_drawer.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';

class GenerateMain extends StatelessWidget {
  const GenerateMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate text'),
      ),
      drawer: context.whenSizeOrNull(
        compactSize: const DashboardDrawer(),
      ),
      body: const Column(
        children: [
          SizedBox(height: 16),
          GenerateTabBar(),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class TextOutputGeneratorScaffold extends StatefulWidget {
  final ExpectedPayload generatorData;
  final String content;

  const TextOutputGeneratorScaffold({
    super.key,
    required this.content,
    required this.generatorData,
  });

  @override
  State<TextOutputGeneratorScaffold> createState() =>
      _TextOutputGeneratorScaffoldState();
}

class _TextOutputGeneratorScaffoldState
    extends State<TextOutputGeneratorScaffold> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final payloadCubit = context.get<PayloadCubit>();
      final outputCubit = context.get<ContentCubit>();
      await payloadCubit.updateContent(
        content: widget.content,
        expectedPayload: ExpectedPayload(
          textPipes: widget.generatorData.textPipes,
          booleanPipes: widget.generatorData.booleanPipes,
          modelPipes: widget.generatorData.modelPipes,
        ),
        expectedPayloadDto: null,
      );
      if (payloadCubit.state is InitialPayloadState) {
        outputCubit.setPendency(widget.content);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final formKey = context.get<PayloadCubit>().formKey;

    return Form(
      key: formKey,
      child: Row(
        children: [
          Expanded(
            child: TemplateInputFormPage(
              generatorData: widget.generatorData,
              content: widget.content,
            ),
          ),
          const VerticalDivider(width: 20),
          Expanded(
            child: TextOutputPage(
              content: widget.content,
              expectedPayload: widget.generatorData,
              formKey: formKey,
            ),
          ),
        ],
      ),
    );
  }
}
