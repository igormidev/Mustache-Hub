import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';

class SwitchMonthYear extends StatelessWidget {
  final ValueNotifier<bool> isYear;
  const SwitchMonthYear({
    super.key,
    required this.isYear,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Monthly'),
        const Text(' subscription'),
        const SizedBox(width: 8),
        Transform.scale(
          scale: 0.6,
          child: Switch.adaptive(
            value: isYear.value,
            activeColor: context.scheme.primary,
            onChanged: (_) {
              isYear.value = !isYear.value;
            },
          ),
        ),
        const SizedBox(width: 8),
        const Text('Yearly'),
        const Text(' subscription'),
      ],
    );
  }
}
