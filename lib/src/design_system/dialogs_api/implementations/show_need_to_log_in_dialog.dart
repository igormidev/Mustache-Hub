import 'package:flutter/material.dart' show BuildContext, SizedBox;
import 'package:lottie/lottie.dart';
import 'package:mustachehub/core/constants/lotties.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/design_system/dialogs_api/overlay_controller.dart';

void showNeedToLogInDialog(BuildContext context) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: 'Need to log in!',
      description: 'Please log into your account or create one for free!',
      actions: [
        DialogAction(
          text: 'Log in',
          onPressed: () {
            context.replaceAll('/auth/login');
          },
        ),
        DialogAction(
          text: 'Create account',
          onPressed: () {
            context.replaceAll('/auth/login');
            Future.delayed(const Duration(milliseconds: 700), () {
              context.push('/auth/signin');
            });
          },
        ),
        DialogAction(
          text: 'Close',
          onPressed: () {
            context.back();
          },
        ),
      ],
      icon: SizedBox(
        width: 100,
        height: 100,
        child: LottieBuilder.asset(Lotties.warning, repeat: false),
      ),
    ),
  );
}
