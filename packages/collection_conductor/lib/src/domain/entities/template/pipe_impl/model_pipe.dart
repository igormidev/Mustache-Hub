part of 'package:collection_conductor/src/domain/entities/template/pipe.dart';

class ModelPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;
  @override
  final String pipeId;

  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;
  ModelPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
    String? pipeId,
  }) : pipeId = pipeId ?? const Uuid().v1();

  ModelPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        textPipes = const [],
        booleanPipes = const [],
        modelPipes = const [],
        pipeId = const Uuid().v1();

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      name,
      description,
      mustacheName,
      textPipes,
      booleanPipes,
      modelPipes,
      pipeId,
    ];
  }
}
