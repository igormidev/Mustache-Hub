import 'package:collection_conductor/src/domain/entities/template/pipe.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_boolean_pipe.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_model_pipe.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_pipes/isar_text_pipe.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_template.dart';

class UserPackageAdapter {
  IsarTemplate templateToIsar(String packageId, Template data) {
    return IsarTemplate.build(
      content: data.content,
      description: data.description,
      templateId: data.templateId,
      version: data.version,
      packageId: packageId,
      textPipes: textListToIsar(data.textPipes),
      booleanPipes: booleanListToIsar(data.booleanPipes),
      modelPipes: modelListToIsar(data.modelPipes),
    );
  }

  List<IsarModelPipe> modelListToIsar(
    List<ModelPipe> models,
  ) {
    return models.map((m) => modelToIsar(m)).toList();
  }

  List<IsarTextPipe> textListToIsar(
    List<TextPipe> texts,
  ) {
    return texts.map((t) => textToIsar(t)).toList();
  }

  List<IsarBooleanPipe> booleanListToIsar(
    List<BooleanPipe> booleans,
  ) {
    return booleans.map((t) => booleanToIsar(t)).toList();
  }

  IsarModelPipe modelToIsar(ModelPipe model) {
    return IsarModelPipe.build(
      name: model.name,
      description: model.description,
      mustacheName: model.mustacheName,
      pipeId: model.pipeId,
      textPipes: textListToIsar(model.textPipes),
      booleanPipes: booleanListToIsar(model.booleanPipes),
      modelPipes: modelListToIsar(model.modelPipes),
    );
  }

  IsarTextPipe textToIsar(TextPipe text) {
    return IsarTextPipe.build(
      name: text.name,
      description: text.description,
      mustacheName: text.mustacheName,
      isRequired: text.isRequired,
      pipeId: text.pipeId,
    );
  }

  IsarBooleanPipe booleanToIsar(BooleanPipe boolean) {
    return IsarBooleanPipe.build(
      name: boolean.name,
      description: boolean.description,
      mustacheName: boolean.mustacheName,
      pipeId: boolean.pipeId,
    );
  }

  ///

  Template templateFromIsar(IsarTemplate isarTemplate) {
    return Template(
      content: isarTemplate.content,
      description: isarTemplate.description,
      templateId: isarTemplate.templateId,
      version: isarTemplate.version,
      textPipes: textListFromIsar(
        isarTemplate.textPipes,
      ),
      booleanPipes: booleanListFromIsar(
        isarTemplate.booleanPipes,
      ),
      modelPipes: modelListFromIsar(
        isarTemplate.modelPipes,
      ),
    );
  }

  List<ModelPipe> modelListFromIsar(
    List<IsarModelPipe> models,
  ) {
    return models.map((m) => modelFromIsar(m)).toList();
  }

  List<TextPipe> textListFromIsar(
    List<IsarTextPipe> texts,
  ) {
    return texts.map((t) => textFromIsar(t)).toList();
  }

  List<BooleanPipe> booleanListFromIsar(
    List<IsarBooleanPipe> booleans,
  ) {
    return booleans.map((t) => booleanFromIsar(t)).toList();
  }

  ModelPipe modelFromIsar(IsarModelPipe model) {
    return ModelPipe(
      name: model.name,
      description: model.description,
      mustacheName: model.mustacheName,
      pipeId: model.pipeId,
      textPipes: textListFromIsar(model.textPipes),
      booleanPipes: booleanListFromIsar(model.booleanPipes),
      modelPipes: modelListFromIsar(model.modelPipes),
    );
  }

  TextPipe textFromIsar(IsarTextPipe text) {
    return TextPipe(
      name: text.name,
      description: text.description,
      mustacheName: text.mustacheName,
      isRequired: text.isRequired,
      pipeId: text.pipeId,
    );
  }

  BooleanPipe booleanFromIsar(IsarBooleanPipe boolean) {
    return BooleanPipe(
      name: boolean.name,
      description: boolean.description,
      mustacheName: boolean.mustacheName,
      pipeId: boolean.pipeId,
    );
  }
}
