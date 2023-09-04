import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/modules/became_premium/core/enum/premium_tier.dart';
import 'package:mustachehub/modules/became_premium/views/components/widgets/price_display.dart';

class TierProductTile extends StatelessWidget {
  final bool isYear;
  final PremiumTier tier;
  const TierProductTile({super.key, required this.tier, required this.isYear});

  @override
  Widget build(BuildContext context) {
    final style = context.texts.bodySmall?.copyWith(fontSize: 10);
    return Container(
      width: 170,
      height: 480,
      decoration: BoxDecoration(
        color: context.scheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Icon(tier.icon, size: 60),
          Text(
            tier.name,
            style: context.texts.titleLarge,
          ),
          const SizedBox(height: 8),
          ...tier.listOfadvantagesOfTier(context, style).map(
            (spans) {
              return _TierAtribute(
                defaultStyle: style,
                spans: spans,
              );
            },
          ).toList(),
          const Spacer(),
          PriceDisplay(isYear: isYear, tier: tier),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Start free trial'),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _TierAtribute extends StatelessWidget {
  final List<TextSpan> spans;
  final TextStyle? defaultStyle;
  const _TierAtribute({required this.spans, required this.defaultStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.star_border_rounded,
            size: 16,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: defaultStyle,
                children: spans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
