import 'package:flutter/material.dart';
import 'package:mustachehub/src/design_system/dialogs_api/overlay_controller.dart';

void showLoadingDialog(BuildContext context, [String? loadingStatusMessage]) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeLoading(
      message: loadingStatusMessage,
    ),
  );
}
