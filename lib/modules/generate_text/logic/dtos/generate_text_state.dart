import 'package:mustachehub/logic/entities/template.dart';

class GenerateTextStateModel {
  final Template template;
  final Map<String, dynamic> payload;
  final List<String> requiredPipes;

  GenerateTextStateModel({
    required this.template,
    required this.payload,
    required this.requiredPipes, // Can not be null
  });
}
