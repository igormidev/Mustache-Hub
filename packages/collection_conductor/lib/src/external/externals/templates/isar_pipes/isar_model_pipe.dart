import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_boolean_pipe.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_text_pipe.dart';
import 'package:isar/isar.dart';

part 'isar_model_pipe.g.dart';

@embedded
class IsarModelPipe {
  late String name;
  late String description;
  late String mustacheName;
  late String pipeId;
  late List<IsarTextPipe> textPipes;
  late List<IsarBooleanPipe> booleanPipes;
  late List<IsarModelPipe> modelPipes;

  IsarModelPipe();

  IsarModelPipe.build({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.pipeId,
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  });
}
