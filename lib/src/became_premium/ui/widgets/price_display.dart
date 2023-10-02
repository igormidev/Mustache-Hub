import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mustachehub/core/extensions/context_extensions.dart';
import 'package:mustachehub/src/became_premium/domain/entities/premium_tier.dart';

class PriceDisplay extends StatelessWidget {
  final bool isYear;
  final PremiumTier tier;
  const PriceDisplay({
    super.key,
    required this.tier,
    required this.isYear,
  });

  @override
  Widget build(BuildContext context) {
    if (tier == PremiumTier.free) {
      return Text(
        'FREE',
        style: context.texts.titleLarge,
      );
    }

    return Container(
      height: 55,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // AnimatedAlign(
          //   duration: const Duration(milliseconds: 600),
          //   alignment: Alignment.bottomCenter,
          //   child: Text(
          //     '\$ ${tier.yearPrice.toStringAsFixed(2)}',
          //     style: context.texts.titleLarge,
          //   ),
          // ),
          //  '\$ ${tier.monthlyPrice.toStringAsFixed(2)}',
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: const EdgeInsets.only(top: 5.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: context.scheme.primary,
                  width: 2,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              child: Text(
                'Year discount',
                style: context.texts.labelSmall?.copyWith(fontSize: 10),
              ),
            ),
          )
              .animate(target: isYear ? 1 : 0)
              .fadeIn(duration: 700.ms)
              .shake(hz: isYear ? null : 1, rotation: isYear ? null : 0),
          Text(
            '\$ ${tier.yearPrice.toStringAsFixed(2)}',
            style: context.texts.titleLarge,
          ).animate(target: isYear ? 1 : 0).fade(),

          SizedBox(
            width: 84,
            height: 30,
            child: AnimatedAlign(
              duration: const Duration(milliseconds: 400),
              alignment: isYear ? Alignment.center : Alignment.center,
              child: Text(
                '\$ ${tier.monthlyPrice.toStringAsFixed(2)}',
                style: context.texts.titleLarge,
              ),
            ),
          )
              .animate(target: isYear ? 0 : 1)
              .slideX(begin: 1)
              .slideY(begin: -1.2)
              .scaleXY(begin: 0.7, end: 1, alignment: Alignment.centerLeft),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(top: 14),
              width: 64,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: context.scheme.scrim,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
            ),
          ).animate(target: isYear ? 1 : 0).fadeIn(delay: 300.ms),
        ],
      ),
    );
  }
}
