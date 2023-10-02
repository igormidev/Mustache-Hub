// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class ExpectedPayload extends Equatable {
  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  const ExpectedPayload({
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textPipes': textPipes.map((x) => x.toMap()).toList(),
      'booleanPipes': booleanPipes.map((x) => x.toMap()).toList(),
      'modelPipes': modelPipes.map((x) => x.toMap()).toList(),
    };
  }

  factory ExpectedPayload.fromMap(Map<String, dynamic> map) {
    return ExpectedPayload(
      textPipes: List<TextPipe>.from(
        (map['textPipes'] as List<int>).map<TextPipe>(
          (x) => TextPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      booleanPipes: List<BooleanPipe>.from(
        (map['booleanPipes'] as List<int>).map<BooleanPipe>(
          (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      modelPipes: List<ModelPipe>.from(
        (map['modelPipes'] as List<int>).map<ModelPipe>(
          (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExpectedPayload.fromJson(String source) =>
      ExpectedPayload.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [textPipes, booleanPipes, modelPipes];
}
