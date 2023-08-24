// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

sealed class Pipe {
  abstract final String name;
  abstract final String? description;
  const Pipe();
}

class TextPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;

  const TextPipe({
    required this.name,
    required this.description,
  });

  @override
  List<Object> get props => [name, description];

  TextPipe copyWith({
    String? name,
    String? description,
  }) {
    return TextPipe(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}

class BooleanPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  const BooleanPipe({
    required this.name,
    required this.description,
  });

  @override
  List<Object> get props => [name, description];

  BooleanPipe copyWith({
    String? name,
    String? description,
  }) {
    return BooleanPipe(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }
}

class ModelPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;

  final List<Pipe> values;

  const ModelPipe({
    required this.name,
    required this.description,
    required this.values,
  });

  @override
  List<Object> get props => [name, description, values];

  ModelPipe copyWith({
    String? name,
    String? description,
    List<Pipe>? values,
  }) {
    return ModelPipe(
      name: name ?? this.name,
      description: description ?? this.description,
      values: values ?? this.values,
    );
  }
}

enum ModelTypes {
  text,
  boolean,
  map,
}
