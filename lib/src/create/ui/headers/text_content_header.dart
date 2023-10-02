import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/create/interactor/cubit/fields_text_size_cubit.dart';
import 'package:mustachehub/src/create/interactor/text_editing_controller/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/src/design_system/default_widgets/debounce_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';

class TextContentHeader extends StatelessWidget {
  final VariablesController controller;
  final Debouncer debouncer;
  const TextContentHeader({
    super.key,
    required this.controller,
    required this.debouncer,
  });

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.get<FieldsTextSizeCubit>();

    final style = context.texts.bodyMedium;
    return CustomHeader(
      headerTitle: 'Content text',
      subtractOnPressed: () {
        controller.needsToCalculateSpan = true;
        sizeBloc.decreaseSizeTestString();
      },
      addOnPressed: () {
        controller.needsToCalculateSpan = true;
        sizeBloc.increaseSizeTestString();
      },
      subtitleWidget: RichText(
        text: TextSpan(
          style: style,
          children: [
            const TextSpan(
              text: 'Type below the text in ',
            ),
            TextSpan(
              text: 'mustache 5 format',
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrl(
                    Uri.parse('https://mustache.github.io/mustache.5.html'),
                  );
                },
              style: style?.copyWith(
                decoration: TextDecoration.underline,
                color: context.scheme.primary,
              ),
            ),
            const TextSpan(
              text: ' which will be used to generate the text with the use'
                  'of the variables that the user will fill. When typing '
                  'this text you can use the previously created variables.',
            ),
          ],
        ),
      ),
      children: [
        DebounceWidget(debouncer),
      ],
    );
  }
}
