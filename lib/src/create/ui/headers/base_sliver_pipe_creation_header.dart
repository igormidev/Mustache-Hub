import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/src/design_system/default_widgets/custom_header.dart';

class PipeCreationHeader extends StatelessWidget {
  final String headerTitle;
  final String subtitleSubtitle;
  const PipeCreationHeader({
    super.key,
    required this.headerTitle,
    required this.subtitleSubtitle,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: CustomHeader(
          headerTitle: headerTitle,
          headerSubtitle: subtitleSubtitle,
          color: context.scheme.primary,
        ),
      ),
    );
  }
}
