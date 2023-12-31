// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class VariablesState {
  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  const VariablesState({
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

  factory VariablesState.fromMap(Map<String, dynamic> map) {
    return VariablesState(
      textPipes: List<TextPipe>.from(
        (map['textPipes'] as List<dynamic>).cast<Map>().map<TextPipe>(
              (x) => TextPipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
      booleanPipes: List<BooleanPipe>.from(
        (map['booleanPipes'] as List<dynamic>).cast<Map>().map<BooleanPipe>(
              (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
      modelPipes: List<ModelPipe>.from(
        (map['modelPipes'] as List<dynamic>).cast<Map>().map<ModelPipe>(
              (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory VariablesState.fromJson(String source) =>
      VariablesState.fromMap(json.decode(source) as Map<String, dynamic>);
}
