import 'package:collection_conductor/src/domain/entities/template/pipe.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';

class TemplateAdapter {
  Map<String, dynamic> toMap(Template template) {
    final modelPipes = _toModelListMap(template.modelPipes);
    final booleanPipes = _toBooleanListMap(template.booleanPipes);
    final textPipes = _toTextListMap(template.textPipes);
    return {
      'content': template.content,
      'description': template.description,
      'version': template.version,
      'textPipes': textPipes,
      'booleanPipes': booleanPipes,
      'modelPipes': modelPipes,
    };
  }

  List<Map<String, dynamic>> _toModelListMap(
    List<ModelPipe> pipes,
  ) {
    return pipes.map((model) {
      return _toModelMap(model);
    }).toList();
  }

  Map<String, dynamic> _toModelMap(ModelPipe pipe) {
    final modelPipes = _toModelListMap(pipe.modelPipes);
    final booleanPipes = _toBooleanListMap(pipe.booleanPipes);
    final textPipes = _toTextListMap(pipe.textPipes);

    return {
      'name': pipe.name,
      'description': pipe.description,
      'mustacheName': pipe.mustacheName,
      'pipeId': pipe.pipeId,
      'textPipes': textPipes,
      'booleanPipes': booleanPipes,
      'modelPipes': modelPipes,
    };
  }

  List<Map<String, dynamic>> _toTextListMap(
    List<TextPipe> pipes,
  ) {
    return pipes.map((model) {
      return _toTextMap(model);
    }).toList();
  }

  Map<String, dynamic> _toTextMap(TextPipe pipe) {
    return {
      'name': pipe.name,
      'description': pipe.description,
      'mustacheName': pipe.mustacheName,
      'pipeId': pipe.pipeId,
      'isRequired': pipe.isRequired,
    };
  }

  List<Map<String, dynamic>> _toBooleanListMap(
    List<BooleanPipe> pipes,
  ) {
    return pipes.map((model) {
      return _toBooleanMap(model);
    }).toList();
  }

  Map<String, dynamic> _toBooleanMap(BooleanPipe pipe) {
    return {
      'name': pipe.name,
      'description': pipe.description,
      'mustacheName': pipe.mustacheName,
      'pipeId': pipe.pipeId,
    };
  }

  // From map

  Template fromMap(String id, Map<String, dynamic> map) {
    final modelPipes = _fromModelListMap(
      (map['modelPipes'] as List).cast<Map>(),
    );
    final booleanPipes = _fromBooleanListMap(
      (map['booleanPipes'] as List).cast<Map>(),
    );
    final textPipes = _fromTextListMap(
      (map['textPipes'] as List).cast<Map>(),
    );

    return Template(
      templateId: id,
      content: map['content'],
      description: map['description'],
      version: map['version'],
      textPipes: textPipes,
      booleanPipes: booleanPipes,
      modelPipes: modelPipes,
    );
  }

  List<ModelPipe> _fromModelListMap(
    List<Map> maps,
  ) {
    return maps.map((map) {
      return _fromModelMap(map);
    }).toList();
  }

  ModelPipe _fromModelMap(Map map) {
    final modelPipes = _fromModelListMap(
      (map['modelPipes'] as List).cast<Map>(),
    );
    final booleanPipes = _fromBooleanListMap(
      (map['booleanPipes'] as List).cast<Map>(),
    );
    final textPipes = _fromTextListMap(
      (map['textPipes'] as List).cast<Map>(),
    );

    return ModelPipe(
      name: map['name'],
      description: map['description'],
      mustacheName: map['mustacheName'],
      pipeId: map['pipeId'],
      textPipes: textPipes,
      booleanPipes: booleanPipes,
      modelPipes: modelPipes,
    );
  }

  List<TextPipe> _fromTextListMap(
    List<Map> maps,
  ) {
    return maps.map((map) {
      return _fromTextMap(map);
    }).toList();
  }

  TextPipe _fromTextMap(Map map) {
    return TextPipe(
      name: map['name'],
      description: map['description'],
      mustacheName: map['mustacheName'],
      pipeId: map['pipeId'],
      isRequired: map['isRequired'],
    );
  }

  List<BooleanPipe> _fromBooleanListMap(
    List<Map> maps,
  ) {
    return maps.map((map) {
      return _fromBooleanMap(map);
    }).toList();
  }

  BooleanPipe _fromBooleanMap(Map map) {
    return BooleanPipe(
      name: map['name'],
      description: map['description'],
      mustacheName: map['mustacheName'],
      pipeId: map['pipeId'],
    );
  }
}
