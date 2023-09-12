part of 'package:collection_conductor/src/domain/entities/template/pipe.dart';

class TextPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;
  @override
  final String pipeId;

  final bool isRequired;

  TextPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.isRequired,
    String? pipeId,
  }) : pipeId = pipeId ?? const Uuid().v1();

  TextPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        pipeId = const Uuid().v1(),
        isRequired = false;

  @override
  List<Object> get props => [
        name,
        description,
        mustacheName,
        isRequired,
        pipeId,
      ];
}
