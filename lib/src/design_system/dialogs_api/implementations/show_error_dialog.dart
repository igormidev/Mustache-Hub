import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/exceptions/custom_exception.dart';
import 'package:mustachehub/src/design_system/dialogs_api/overlay_controller.dart';

void showErrorDialog(
  BuildContext context,
  String message, [
  String? description,
]) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: message,
      description: description,
      actions: const [],
      icon: SizedBox(
        width: 100,
        height: 100,
        child: LottieBuilder.asset(Lotties.error, repeat: false),
      ),
    ),
  );
}

void showWarningDialog(
  BuildContext context,
  String message, [
  String? description,
]) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: message,
      description: description,
      actions: const [],
      icon: SizedBox(
        width: 100,
        height: 100,
        child: LottieBuilder.asset(Lotties.warning, repeat: false),
      ),
    ),
  );
}

void showCustomException(
  BuildContext context,
  CustomException error,
) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: error.message,
      description: error.description,
      actions: const [],
      icon: SizedBox(
        width: 100,
        height: 100,
        child: LottieBuilder.asset(Lotties.error),
      ),
    ),
  );
}
