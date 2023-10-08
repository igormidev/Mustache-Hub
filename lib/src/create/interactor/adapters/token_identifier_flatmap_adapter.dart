import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class TokenIdentifierFlatMapAdapter {
  Map<String, TokenIdentifier> toFlatMap({
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ModelPipe> modelPipes,
  }) {
    final Map<String, TokenIdentifier> response = {};
    final texts = textPipes
        .map((p) => MapEntry(
            p.mustacheName, TokenIdentifier.text(name: p.mustacheName)))
        .toList();
    response.addAll(Map.fromEntries(texts));

    final booleans = booleanPipes
        .map((p) => MapEntry(
            p.mustacheName, TokenIdentifier.boolean(name: p.mustacheName)))
        .toList();
    response.addAll(Map.fromEntries(booleans));
    for (final modelPipe in modelPipes) {
      response.addAll(_flatModelPipe(modelPipe));
    }

    return response;
  }

  Map<String, TokenIdentifier> _flatModelPipe(
    ModelPipe modelPipe,
  ) {
    final Map<String, TokenIdentifier> response = {};

    final texts = modelPipe.textPipes
        .map((p) => MapEntry(
            p.mustacheName, TokenIdentifier.text(name: p.mustacheName)))
        .toList();
    response.addAll(Map.fromEntries(texts));

    final booleans = modelPipe.booleanPipes
        .map((p) => MapEntry(
            p.mustacheName, TokenIdentifier.boolean(name: p.mustacheName)))
        .toList();
    response.addAll(Map.fromEntries(booleans));

    for (final model in modelPipe.modelPipes) {
      response.addAll(_flatModelPipe(model));
    }

    return response;
  }
}