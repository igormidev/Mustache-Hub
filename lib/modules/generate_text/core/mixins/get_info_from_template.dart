import 'package:mustachehub/core/extensions/list_extensions.dart';
import 'package:mustachehub/logic/entities/pipe.dart';
import 'package:mustachehub/logic/entities/template.dart';
import 'package:mustachehub/modules/generate_text/logic/dtos/pipe_dto.dart';

mixin GetInfoFromTemplate {
  Map<String, dynamic> getPayloadFromDtos({
    required List<TextPipe> texts,
    required List<BooleanPipe> booleans,
    required List<ModelPipe> models,
    required List<TextPipeDto> textDtos,
    required List<BooleanPipeDto> booleanDtos,
  }) {
    final Map<String, dynamic> payload = {};
    payload.addAll(_getTextPayloads(texts, textDtos));
    payload.addAll(_getBoolPayloads(booleans, booleanDtos));
    payload.addAll(_getMapPayloads(models, textDtos, booleanDtos));
    return payload;
  }

  Map<String, dynamic> _getMapPayloads(
    List<ModelPipe> pipes,
    List<TextPipeDto> textDtos,
    List<BooleanPipeDto> booleanDtos,
  ) {
    final Map<String, dynamic> payload = {};

    for (final ModelPipe modelPipe in pipes) {
      switch (modelPipe) {
        case TextPipe():
          payload.addAll(_getTextPayloads(modelPipe.textPipes, textDtos));
        case BooleanPipe():
          payload.addAll(_getBoolPayloads(modelPipe.booleanPipes, booleanDtos));
        case ModelPipe():
          payload.addAll(
            _getMapPayloads(modelPipe.modelPipes, textDtos, booleanDtos),
          );
      }
    }

    return payload;
  }

  Map<String, dynamic> _getTextPayloads(
    List<TextPipe> pipes,
    List<TextPipeDto> dtos,
  ) {
    final Map<String, dynamic> payload = {};
    for (final textPipe in pipes) {
      final dto = dtos.firstWhere((dto) => dto.pipe.id == textPipe.id);
      payload.addAll({textPipe.mustacheName: dto.payloadValue});
    }

    return payload;
  }

  Map<String, dynamic> _getBoolPayloads(
    List<BooleanPipe> pipes,
    List<BooleanPipeDto> dtos,
  ) {
    final Map<String, dynamic> payload = {};
    for (final boolPipe in pipes) {
      final dto = dtos.firstWhere((dto) => dto.pipe.id == boolPipe.id);
      payload.addAll({boolPipe.mustacheName: dto.payloadValue});
    }

    return payload;
  }

  (
    List<TextPipeDto> textPipes,
    List<BooleanPipeDto> boolPipes,
  ) dtosFromTemplate(
    Template template,
    List<TextPipeDto>? oldTextsDtos,
    List<BooleanPipeDto>? oldBoolDtos,
  ) {
    final List<TextPipeDto> textsResponse = [];
    final List<BooleanPipeDto> booleanResponse = [];

    textsResponse.addAll(_calculateTextsPipe(template.texts, oldTextsDtos));
    booleanResponse
        .addAll(_calculateBooleansPipe(template.booleans, oldBoolDtos));

    final modelResponse = _calculateModelsPipe(
      template.models,
      oldTextsDtos,
      oldBoolDtos,
    );
    textsResponse.addAll(modelResponse.$1);
    booleanResponse.addAll(modelResponse.$2);

    return (textsResponse, booleanResponse);
  }

  (
    List<TextPipeDto> textPipes,
    List<BooleanPipeDto> boolPipes,
  ) _calculateModelsPipe(
    List<ModelPipe> pipes,
    List<TextPipeDto>? oldTextsDtos,
    List<BooleanPipeDto>? oldBoolDtos,
  ) {
    final List<TextPipeDto> textsResponse = [];
    final List<BooleanPipeDto> booleanResponse = [];

    for (final ModelPipe pipe in pipes) {
      textsResponse.addAll(_calculateTextsPipe(pipe.textPipes, oldTextsDtos));
      booleanResponse.addAll(
        _calculateBooleansPipe(pipe.booleanPipes, oldBoolDtos),
      );

      final modelResponse = _calculateModelsPipe(
        pipe.modelPipes,
        oldTextsDtos,
        oldBoolDtos,
      );
      textsResponse.addAll(modelResponse.$1);
      booleanResponse.addAll(modelResponse.$2);
    }

    return (textsResponse, booleanResponse);
  }

  List<TextPipeDto> _calculateTextsPipe(
    List<TextPipe> pipes,
    List<TextPipeDto>? oldDtos,
  ) {
    final List<TextPipeDto> response = [];

    for (final pipe in pipes) {
      final cacheValue = oldDtos?.singleWhereOrNull(
        (dto) => dto.pipe.id == pipe.id,
      );
      final pipeDto = TextPipeDto(
        pipe: pipe,
        payloadValue: cacheValue?.payloadValue,
      );
      response.add(pipeDto);
    }

    return response;
  }

  List<BooleanPipeDto> _calculateBooleansPipe(
    List<BooleanPipe> pipes,
    List<BooleanPipeDto>? oldDtos,
  ) {
    final List<BooleanPipeDto> response = [];

    for (final pipe in pipes) {
      final cacheValue = oldDtos?.singleWhereOrNull(
        (dto) => dto.pipe.id == pipe.id,
      );
      final pipeDto = BooleanPipeDto(
        pipe: pipe,
        payloadValue: cacheValue?.payloadValue ?? false,
      );
      response.add(pipeDto);
    }

    return response;
  }
}
