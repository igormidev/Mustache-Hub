import 'package:flutter/material.dart';
import 'package:mustachehub/core/exceptions/custom_exception.dart';
import 'package:mustachehub/shared/dialogs_api/overlay_controller.dart';

void showErrorDialog(
  BuildContext context,
  CustomException error,
) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: error.message,
      description: error.description,
      actions: const [],
    ),
  );
}
