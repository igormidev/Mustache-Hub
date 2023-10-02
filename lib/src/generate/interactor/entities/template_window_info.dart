// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:mustachehub/core/helpers/unique_id_generator.dart';

class TemplateWindowInfo {
  final String windowId;
  final String templateId;
  final String templateVersionName;

  TemplateWindowInfo({
    required this.templateId,
    required this.templateVersionName,
    String? windowId,
  }) : windowId = windowId ?? const UniqueIdGenerator().getId();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'windowId': windowId,
      'templateId': templateId,
      'templateVersionName': templateVersionName,
    };
  }

  factory TemplateWindowInfo.fromMap(Map<String, dynamic> map) {
    return TemplateWindowInfo(
      windowId: map['windowId'] as String,
      templateId: map['templateId'] as String,
      templateVersionName: map['templateVersionName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TemplateWindowInfo.fromJson(String source) =>
      TemplateWindowInfo.fromMap(json.decode(source) as Map<String, dynamic>);
}
