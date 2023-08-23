import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/extensions_screen_breakpoint.dart';

class ResponsiveSplitter extends StatelessWidget {
  final Widget compactSize;
  final Widget mediumSize;
  final Widget expandedSize;
  const ResponsiveSplitter({
    required this.compactSize,
    required this.mediumSize,
    required this.expandedSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return context.whenSize(
      compactSize: compactSize,
      mediumSize: mediumSize,
      expandedSize: expandedSize,
    );
  }
}
