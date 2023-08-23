import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/shared/custom_header.dart';
import 'package:url_launcher/url_launcher.dart';

class TextContentSection extends StatelessWidget {
  const TextContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Column(
        children: [
          CustomHeader(
            headerTitle: 'Content String',
            subtitleWidget: const _TextContentSubtitile(),
            addOnPressed: () {},
            subtractOnPressed: () {},
          ),
          Expanded(
            child: TextFormField(
              minLines: 1,
              maxLines: 4,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                fillColor: Theme.of(context).colorScheme.onInverseSurface,
                filled: true,
              ),
              textAlignVertical: TextAlignVertical.top,
            ),
          ),
        ],
      ),
    );
  }
}

class _TextContentSubtitile extends StatelessWidget {
  const _TextContentSubtitile();

  @override
  Widget build(BuildContext context) {
    final style = context.texts.bodyMedium;

    return RichText(
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
          text:
              ' which will be used to generate the text. When typing this text you can use the previously created variables. ',
        ),
      ],
    ));
  }
}
