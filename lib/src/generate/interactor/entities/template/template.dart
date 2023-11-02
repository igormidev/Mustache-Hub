// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';

class Template extends Equatable {
  final String templateId;
  final String name;
  final String description;
  final String versionName;
  final String content;
  final ExpectedPayload expectedPayload;

  const Template({
    required this.templateId,
    required this.name,
    required this.description,
    required this.versionName,
    required this.content,
    required this.expectedPayload,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      templateId,
      name,
      description,
      versionName,
      content,
      expectedPayload,
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'templateId': templateId,
      'name': name,
      'description': description,
      'versionName': versionName,
      'content': content,
      'expectedPayload': expectedPayload.toMap(),
    };
  }

  factory Template.fromMap(Map<String, dynamic> map) {
    return Template(
      templateId: map['templateId'] as String,
      name: map['name'] as String,
      description: map['description'] as String,
      versionName: map['versionName'] as String,
      content: map['content'] as String,
      expectedPayload: ExpectedPayload.fromMap(
          map['expectedPayload'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Template.fromJson(String source) =>
      Template.fromMap(json.decode(source) as Map<String, dynamic>);

  Template copyWith({
    String? templateId,
    String? name,
    String? description,
    String? versionName,
    String? content,
    ExpectedPayload? expectedPayload,
  }) {
    return Template(
      templateId: templateId ?? this.templateId,
      name: name ?? this.name,
      description: description ?? this.description,
      versionName: versionName ?? this.versionName,
      content: content ?? this.content,
      expectedPayload: expectedPayload ?? this.expectedPayload,
    );
  }
}
