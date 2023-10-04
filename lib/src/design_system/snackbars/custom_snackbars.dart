import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class CustomSnackbars {
  static const double _defaultElevation = 0;
  static const SnackBarBehavior _defaultbehavior = SnackBarBehavior.floating;
  static const Color _defaultBackground = Colors.transparent;
  static const EdgeInsets _defaultPadding = EdgeInsets.only(top: 20);

  static void showError(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    final snackBar = SnackBar(
      elevation: _defaultElevation,
      behavior: _defaultbehavior,
      backgroundColor: _defaultBackground,
      content: Padding(
        padding: _defaultPadding,
        child: AwesomeSnackbarContent(
          title: title,
          message: description,
          contentType: ContentType.failure,
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showMessage(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    final snackBar = SnackBar(
      elevation: _defaultElevation,
      behavior: _defaultbehavior,
      backgroundColor: _defaultBackground,
      content: Padding(
        padding: _defaultPadding,
        child: AwesomeSnackbarContent(
          title: title,
          message: description,
          contentType: ContentType.help,
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showSuccess(
    BuildContext context, {
    required String title,
    required String description,
    Duration? duration,
  }) {
    final snackBar = SnackBar(
      elevation: _defaultElevation,
      behavior: _defaultbehavior,
      backgroundColor: _defaultBackground,
      duration: const Duration(milliseconds: 4000),
      content: Padding(
        padding: _defaultPadding,
        child: AwesomeSnackbarContent(
          title: title,
          message: description,
          contentType: ContentType.success,
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  static void showWarning(
    BuildContext context, {
    required String title,
    required String description,
  }) {
    final snackBar = SnackBar(
      elevation: _defaultElevation,
      behavior: _defaultbehavior,
      backgroundColor: _defaultBackground,
      content: Padding(
        padding: _defaultPadding,
        child: AwesomeSnackbarContent(
          title: title,
          message: description,
          contentType: ContentType.warning,
        ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
