import 'package:flutter/material.dart';

class LargeElevatedButtonTheme
    extends ThemeExtension<LargeElevatedButtonTheme> {
  final ButtonStyle style = ElevatedButton.styleFrom(
    elevation: 3,
    minimumSize: const Size(double.infinity, 55),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0),
    ),
  );

  @override
  ThemeExtension<LargeElevatedButtonTheme> copyWith({
    Color? backgroundColor,
    OutlinedBorder? shape,
    Color? foregroundColor,
  }) {
    return LargeElevatedButtonTheme();
  }

  @override
  ThemeExtension<LargeElevatedButtonTheme> lerp(
    covariant ThemeExtension<LargeElevatedButtonTheme>? other,
    double t,
  ) {
    return this;
  }
}
