// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:mustachehub/logic/entities/pipe.dart';

class Template extends Equatable {
  final String content;
  final List<TextPipe> texts;
  final List<BooleanPipe> booleans;
  final List<ModelPipe> models;
  const Template({
    required this.content,
    required this.texts,
    required this.booleans,
    required this.models,
  });

  Template copyWith({
    String? content,
    List<TextPipe>? texts,
    List<BooleanPipe>? booleans,
    List<ModelPipe>? models,
  }) {
    return Template(
      content: content ?? this.content,
      texts: texts ?? this.texts,
      booleans: booleans ?? this.booleans,
      models: models ?? this.models,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'texts': texts.map((x) => x.toMap()).toList(),
      'booleans': booleans.map((x) => x.toMap()).toList(),
      'models': models.map((x) => x.toMap()).toList(),
    };
  }

  factory Template.fromMap(Map<String, dynamic> map) {
    return Template(
      content: map['content'] as String,
      texts: List<TextPipe>.from(
        (map['texts'] as List<int>).map<TextPipe>(
          (x) => TextPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      booleans: List<BooleanPipe>.from(
        (map['booleans'] as List<int>).map<BooleanPipe>(
          (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      models: List<ModelPipe>.from(
        (map['models'] as List<int>).map<ModelPipe>(
          (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Template.fromJson(String source) =>
      Template.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [content, texts, booleans, models];
}
