// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_boolean_pipe.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_model_pipe.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_text_pipe.dart';
import 'package:isar/isar.dart';

part 'isar_template.g.dart';

@Collection()
class IsarTemplate {
  Id id = Isar.autoIncrement;

  late String content;
  late String description;
  @Index()
  late String packageId;
  late String templateId;
  late double version;
  late List<IsarTextPipe> textPipes;
  late List<IsarBooleanPipe> booleanPipes;
  late List<IsarModelPipe> modelPipes;
  IsarTemplate();

  IsarTemplate.build({
    required this.content,
    required this.description,
    required this.packageId,
    required this.templateId,
    required this.version,
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  });
}
