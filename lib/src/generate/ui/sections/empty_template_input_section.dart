import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';

class EmptyIndicatorSection extends StatelessWidget {
  final String text;
  final String assetName;
  final bool willHaveCircleAvatarInDarkMode;
  final bool sholdRepeat;
  final double? margin;

  const EmptyIndicatorSection({
    super.key,
    required this.text,
    required this.assetName,
    required this.willHaveCircleAvatarInDarkMode,
    this.margin,
    this.sholdRepeat = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: context.texts.titleLarge
                  ?.copyWith(color: context.scheme.outline),
            ),
            if (Theme.of(context).brightness == Brightness.dark)
              const SizedBox(height: 16),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 250 - (margin ?? 0),
                maxWidth: 250 - (margin ?? 0),
              ),
              child: Theme.of(context).brightness == Brightness.light &&
                      willHaveCircleAvatarInDarkMode == false
                  ? SizedBox.expand(
                      child: LottieBuilder.asset(
                        assetName,
                        fit: BoxFit.contain,
                        repeat: sholdRepeat,
                      ),
                    )
                  : SizedBox.expand(
                      child: CircleAvatar(
                        backgroundColor: context.scheme.outlineVariant,
                        child: SizedBox.expand(
                          child: LottieBuilder.asset(
                            assetName,
                            fit: BoxFit.contain,
                            repeat: sholdRepeat,
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
