import 'package:collection_conductor/src/domain/entities/template/pipe.dart';

class Template {
  final String content;
  final String description;
  final String templateId;
  final double version;
  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;

  const Template({
    required this.content,
    required this.description,
    required this.templateId,
    required this.version,
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  });
}
