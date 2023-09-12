import 'package:isar/isar.dart';

part 'isar_boolean_pipe.g.dart';

@embedded
class IsarBooleanPipe {
  late String name;
  late String description;
  late String mustacheName;
  late String pipeId;

  IsarBooleanPipe();

  IsarBooleanPipe.build({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.pipeId,
  });
}
