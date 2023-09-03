// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

sealed class Pipe {
  abstract final String name;
  abstract final String description;
  abstract final String mustacheName;
  const Pipe();

  factory Pipe.fromMap(Map<String, dynamic> map) {
    final type = map['runtimeType'] as String;
    if (type == '$TextPipe') {
      return TextPipe.fromMap(map);
    } else if (type == '$BooleanPipe') {
      return BooleanPipe.fromMap(map);
    } else if (type == '$ModelPipe') {
      return ModelPipe.fromMap(map);
    } else {
      throw UnimplementedError(); // TODO(igor): Manage this error
    }
  }
}

class TextPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;

  const TextPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
  });

  @override
  List<Object> get props => [name, description, mustacheName];

  TextPipe copyWith({
    String? name,
    String? description,
    String? mustacheName,
  }) {
    return TextPipe(
      name: name ?? this.name,
      description: description ?? this.description,
      mustacheName: mustacheName ?? this.mustacheName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'runtimeType': runtimeType.toString(),
    };
  }

  @override
  factory TextPipe.fromMap(Map<String, dynamic> map) {
    return TextPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TextPipe.fromJson(String source) =>
      TextPipe.fromMap(json.decode(source) as Map<String, dynamic>);
}

class BooleanPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;

  const BooleanPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
  });

  @override
  List<Object> get props => [name, description, mustacheName];

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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'runtimeType': runtimeType.toString(),
    };
  }

  @override
  factory BooleanPipe.fromMap(Map<String, dynamic> map) {
    return BooleanPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BooleanPipe.fromJson(String source) =>
      BooleanPipe.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}

class ModelPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;

  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ModelPipe> modelPipes;
  const ModelPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  });

  const ModelPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        textPipes = const [],
        booleanPipes = const [],
        modelPipes = const [];

  ModelPipe copyWith({
    String? name,
    String? description,
    String? mustacheName,
    List<TextPipe>? textPipes,
    List<BooleanPipe>? booleanPipes,
    List<ModelPipe>? modelPipes,
  }) {
    return ModelPipe(
      name: name ?? this.name,
      description: description ?? this.description,
      mustacheName: mustacheName ?? this.mustacheName,
      textPipes: textPipes ?? this.textPipes,
      booleanPipes: booleanPipes ?? this.booleanPipes,
      modelPipes: modelPipes ?? this.modelPipes,
    );
  }

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
    ];
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'textPipes': textPipes.map((x) => x.toMap()).toList(),
      'booleanPipes': booleanPipes.map((x) => x.toMap()).toList(),
      'modelPipes': modelPipes.map((x) => x.toMap()).toList(),
      'runtimeType': runtimeType.toString(),
    };
  }

  @override
  factory ModelPipe.fromMap(Map<String, dynamic> map) {
    return ModelPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      textPipes: List<TextPipe>.from(
        (map['textPipes'] as List<dynamic>).map<TextPipe>(
          (x) => TextPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      booleanPipes: List<BooleanPipe>.from(
        (map['booleanPipes'] as List<dynamic>).map<BooleanPipe>(
          (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      modelPipes: List<ModelPipe>.from(
        (map['modelPipes'] as List<dynamic>).map<ModelPipe>(
          (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelPipe.fromJson(String source) =>
      ModelPipe.fromMap(json.decode(source) as Map<String, dynamic>);
}

enum ModelTypes {
  text,
  boolean,
  map,
}
