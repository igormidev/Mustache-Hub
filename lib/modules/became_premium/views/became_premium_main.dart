import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mustachehub/modules/became_premium/core/enum/premium_tier.dart';
import 'package:mustachehub/modules/became_premium/views/components/switch_month_year.dart';
import 'package:mustachehub/modules/became_premium/views/components/widgets/became_premium_header.dart';
import 'package:mustachehub/modules/became_premium/views/components/widgets/tier_product_tile.dart';

class BecamePremiumMain extends HookWidget {
  const BecamePremiumMain({super.key});

  @override
  Widget build(BuildContext context) {
    final isYear = useState(true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pricing page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const BecamePremiumHeader(),
          SwitchMonthYear(isYear: isYear),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: PremiumTier.values.map((tier) {
              return TierProductTile(
                isYear: isYear.value,
                tier: tier,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
