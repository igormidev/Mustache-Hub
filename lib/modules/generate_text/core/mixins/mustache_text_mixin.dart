import 'dart:developer';

import 'package:mason/mason.dart';

mixin MustacheTextMixin {
  String? getMustacheText(String content, Map<String, dynamic> payload) {
    if (content.replaceAll(' ', '').isEmpty) {
      return null;
    }
    try {
      return content.render(payload);
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      return null;
    }
  }
}
