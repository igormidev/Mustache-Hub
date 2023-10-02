import 'package:mustachehub/src/generate/interactor/entities/dtos/pipe_dto.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';
import 'package:mustachehub/core/extensions/list_extensions.dart';

part 'get_functions.h.dart';
part 'calculate_functions.h.dart';

class DtoAdapter {
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

  ({
    List<TextPipeDto> textPipes,
    List<BooleanPipeDto> boolPipes,
  }) dtosFromTemplate(
    ExpectedPayload generatorData,
    List<TextPipeDto>? oldTextsDtos,
    List<BooleanPipeDto>? oldBoolDtos,
  ) {
    final List<TextPipeDto> textsResponse = [];
    final List<BooleanPipeDto> booleanResponse = [];

    textsResponse.addAll(
      _calculateTextsPipe(generatorData.textPipes, oldTextsDtos),
    );
    booleanResponse.addAll(
      _calculateBooleansPipe(generatorData.booleanPipes, oldBoolDtos),
    );

    final modelResponse = _calculateModelsPipe(
      generatorData.modelPipes,
      oldTextsDtos,
      oldBoolDtos,
    );
    textsResponse.addAll(modelResponse.$1);
    booleanResponse.addAll(modelResponse.$2);

    return (textPipes: textsResponse, boolPipes: booleanResponse);
  }
}
