// ignore_for_file: public_member_api_docs, sort_constructors_first

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
}
