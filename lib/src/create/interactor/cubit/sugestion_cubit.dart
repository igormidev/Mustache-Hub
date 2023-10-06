import 'dart:ffi';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/create/interactor/state/sugestion_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/expected_payload.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class SugestionCubit extends Cubit<SugestionState> {
  SugestionCubit() : super(SugestionState.initial());

  void set({
    required int cursorIndex,
    required List<Token> tokens,
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ModelPipe> modelPipes,
  }) {
    final List<TokenIdentifier> identifiers = [];

    final validTokens = tokens.where(
        (e) => e.type == TokenType.identifier || e.type == TokenType.sigil);
    final allVariables = toFlatMap(
      textPipes: textPipes,
      booleanPipes: booleanPipes,
      modelPipes: modelPipes,
    );

    final Map<TokenIdentifier, int> modelOccurrencesBeforeCursor = {};

    Token? lastToken;
    for (final token in validTokens) {
      if (token.start <= cursorIndex) {
        final identifier = allVariables[token.start];
        if (identifier != null) {
          final identifierCounter =
              modelOccurrencesBeforeCursor[identifier] ?? 0;
          if (identifier is TextTokenIdentifier || lastToken == null) {
            modelOccurrencesBeforeCursor
                .addAll({identifier: identifierCounter});
          } else {
            final isSigil = lastToken.type == TokenType.sigil;
            if (isSigil == false) return;

            // "Open" sigin is the sigin that is use to open a section
            final isOpenSigil =
                lastToken.value == '^' || lastToken.value == '#';

            if (isOpenSigil) {
              modelOccurrencesBeforeCursor.addAll({
                identifier: identifierCounter + 1,
              });
            } else {
              modelOccurrencesBeforeCursor.addAll({
                identifier: identifierCounter - 1,
              });
            }
          }
        }
      } else {
        break;
      }

      lastToken = token;
    }

    modelOccurrencesBeforeCursor.forEach((key, value) {
      if (value >= 1) {
        identifiers.add(key);
        key.whenOrNull(
          model: (name, texts, boolean, subModels) {
            identifiers.addAll(texts);
            identifiers.addAll(boolean);
            identifiers.addAll(subModels);
          },
        );
      }
    });

    emit(SugestionState.withSugestion(
      availibleVariablesString: '',
      tokenIdentifiers: identifiers,
    ));
  }

  void hideSugestion() => emit(SugestionState.initial());
}

Map<String, TokenIdentifier> toFlatMap({
  required final List<TextPipe> textPipes,
  required final List<BooleanPipe> booleanPipes,
  required final List<ModelPipe> modelPipes,
}) {
  final Map<String, TokenIdentifier> response = {};

  for (final text in textPipes) {
    response.addAll({text.name: TokenIdentifier.text(name: text.name)});
  }
  for (final boolean in booleanPipes) {
    response
        .addAll({boolean.name: TokenIdentifier.boolean(name: boolean.name)});
  }
  for (final model in modelPipes) {
    final mapResponse = toFlatMap(
      textPipes: textPipes,
      booleanPipes: booleanPipes,
      modelPipes: modelPipes,
    );

    response.addAll(mapResponse);
  }
  return response;
}

String getVarText({
  required List<TokenIdentifier> identifiers,
}) {
  const text = '''''';

  for (final identifier in identifiers) {}

  return text;
}

// 📦 Current variables options
//  ┣ 📂 core
//  ┃ ┣ 📂 error
//  ┃ ┃ ┣ 📄 Name
//  ┃ ┃ ┗ 🔗 Is male

