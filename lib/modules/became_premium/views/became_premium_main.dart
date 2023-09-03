import 'package:flutter/material.dart';
import 'package:mustachehub/core/extensions/theme.dart';
import 'package:mustachehub/modules/became_premium/core/enum/premium_tier.dart';
import 'package:mustachehub/modules/became_premium/views/components/widgets/became_premium_header.dart';
import 'package:mustachehub/modules/became_premium/views/components/widgets/tier_product_tile.dart';

class BecamePremiumMain extends StatelessWidget {
  const BecamePremiumMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pricing page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const BecamePremiumHeader(),
          SizedBox(height: context.height * 0.05),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: PremiumTier.values.map((tier) {
              return TierProductTile(tier: tier);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
