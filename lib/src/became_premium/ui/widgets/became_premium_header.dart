import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';

class BecamePremiumHeader extends StatelessWidget {
  const BecamePremiumHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final style = context.texts.bodyMedium;
    return CustomHeader(
      headerTitle: 'Became premium!',
      subtitleWidget: RichText(
        text: TextSpan(
          style: style,
          children: [
            const TextSpan(
              text: 'Unlock premium content! Pick the package '
                  'that most combine with you demand. ',
            ),
            TextSpan(
              text: 'Start your free trial today',
              style: style?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.scheme.primary,
                decoration: TextDecoration.underline,
              ),
            ),
            const TextSpan(
              text: ' so you can ensure that Mustache Premium will be a ',
            ),
            TextSpan(
              text: 'killer productivity booster app',
              style: style?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.scheme.tertiary,
                fontStyle: FontStyle.italic,
              ),
            ),
            const TextSpan(text: ' to generate '),
            TextSpan(
              text: 'effective',
              style: style?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.scheme.tertiary,
                fontStyle: FontStyle.italic,
              ),
            ),
            const TextSpan(text: ' and '),
            TextSpan(
              text: 'impactful',
              style: style?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.scheme.tertiary,
                fontStyle: FontStyle.italic,
              ),
            ),
            const TextSpan(text: ' texts through your day-to-day.'),
          ],
        ),
      ),
    );
  }
}
