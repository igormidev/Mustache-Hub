part of 'package:collection_conductor/src/domain/entities/template/pipe.dart';

class BooleanPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;
  @override
  final String pipeId;

  BooleanPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    String? pipeId,
  }) : pipeId = pipeId ?? const Uuid().v1();

  BooleanPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        pipeId = const Uuid().v1();

  @override
  List<Object> get props => [
        name,
        description,
        mustacheName,
        pipeId,
      ];

  BooleanPipe copyWith({
    String? name,
    String? description,
    String? mustacheName,
  }) {
    return BooleanPipe(
      name: name ?? this.name,
      description: description ?? this.description,
      mustacheName: mustacheName ?? this.mustacheName,
    );
  }
}
