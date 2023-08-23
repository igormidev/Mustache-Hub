import 'package:flutter/material.dart';
import 'package:mustachehub/shared/dialogs_api/overlay_controller.dart';

void showSuccessDialog(
  BuildContext context,
) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: const DialogTypeMessageAction(
      title: 'Success',
      description: 'Your action completed successfully',
      actions: [],
    ),
  );
}
