import 'package:isar/isar.dart';

part 'isar_text_pipe.g.dart';

@embedded
class IsarTextPipe {
  late String name;
  late String description;
  late String mustacheName;
  late String pipeId;
  late bool isRequired;

  IsarTextPipe();

  IsarTextPipe.build({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.pipeId,
    required this.isRequired,
  });
}
