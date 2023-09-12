// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

sealed class Pipe {
  abstract final String name;
  abstract final String description;
  abstract final String mustacheName;
  abstract final String id;

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

final v2 = {
  'textPipes': [
    {
      'runtimeType': 'TextPipe',
      'name': 'Your name',
      'description': 'Type here your name',
      'id': '123',
      'isRequired': true,
      'mustacheName': 'userName',
    }
  ],
  'booleanPipes': [
    {
      'runtimeType': 'BooleanPipe',
      'name': 'Do you know how to program in Flutter?',
      'description':
          'Set to true if you have the skills to programm in flutter',
      'id': '456',
      'defaultValue': true,
      'mustacheName': 'doYouProgramInFlutter',
    }
  ],
  'models': [
    {
      'runtimeType': 'ModelPipe',
      'name': 'Your children',
      'description': 'Pass here the information for each child you have',
      'id': '789',
      'textPipes': [
        {
          'runtimeType': 'TextPipe',
          'name': 'Child name',
          'description': 'The name of the child',
          'id': '010',
          'isRequired': true,
        },
        {
          'runtimeType': 'TextPipe',
          'name': 'Child age',
          'description': 'The age of the child',
          'id': '011',
          'isRequired': true,
        },
      ],
      'booleanPipes': [
        {
          'runtimeType': 'BooleanPipe',
          'name': 'Have black hair',
          'description': 'Set to true if the child has black hair',
          'id': '012',
          'isRequired': true,
        },
      ],
      'modelPipes': [
        {
          'runtimeType': 'ModelPipe',
          'name': 'Child friends',
          'description':
              'Pass here the information for each friend your child have',
          'id': '013',
          'textPipes': [
            {
              'runtimeType': 'TextPipe',
              'name': 'Friend name',
              'description': 'The name of your child friend',
              'id': '014',
              'isRequired': true,
            },
            {
              'runtimeType': 'TextPipe',
              'name': 'Friend age',
              'description': 'The age of your child friend',
              'id': '015',
              'isRequired': true,
            },
          ]
        }
      ]
    }
  ]
};

class TextPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;
  @override
  final String id;

  final bool isRequired;

  TextPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.isRequired,
    String? id,
  }) : id = id ?? const Uuid().v1();

  TextPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        id = const Uuid().v1(),
        isRequired = false;

  @override
  List<Object> get props => [
        name,
        description,
        mustacheName,
        isRequired,
        id,
      ];

  TextPipe copyWith({
    String? name,
    String? description,
    String? mustacheName,
    bool? isRequired,
  }) {
    return TextPipe(
      name: name ?? this.name,
      description: description ?? this.description,
      mustacheName: mustacheName ?? this.mustacheName,
      isRequired: isRequired ?? this.isRequired,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'id': id,
      'isRequired': isRequired,
      'runtimeType': runtimeType.toString(),
    };
  }

  @override
  factory TextPipe.fromMap(Map<String, dynamic> map) {
    return TextPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      isRequired: map['isRequired'] as bool,
      id: map['id'] as String,
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
  @override
  final String id;

  BooleanPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    String? id,
  }) : id = id ?? const Uuid().v1();

  BooleanPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        id = const Uuid().v1();

  @override
  List<Object> get props => [
        name,
        description,
        mustacheName,
        id,
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'id': id,
      'runtimeType': runtimeType.toString(),
    };
  }

  @override
  factory BooleanPipe.fromMap(Map<String, dynamic> map) {
    return BooleanPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      id: map['id'] as String,
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
  @override
  final String id;

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
    String? id,
  }) : id = id ?? const Uuid().v1();

  ModelPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        textPipes = const [],
        booleanPipes = const [],
        modelPipes = const [],
        id = const Uuid().v1();

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
      id,
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
      'id': id,
      'runtimeType': runtimeType.toString(),
    };
  }

  @override
  factory ModelPipe.fromMap(Map<String, dynamic> map) {
    return ModelPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      id: map['id'] as String,
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
