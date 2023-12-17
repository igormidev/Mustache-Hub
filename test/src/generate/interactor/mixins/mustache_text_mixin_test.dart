import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mason/mason.dart';

import 'package:mustachex/mustachex.dart';

void main() {
  const content = r'''{{^isMale}}SIM{{/isMale}}
________________________
''';
  test('Should go right', () {
    final value = content.render(payload);
    if (kDebugMode) {
      print(value);
    }

    final parser = Parser(content, null, '{{ }}');

    final processor = MustachexProcessor(initialVariables: payload);
    processor.process(content);
    final tokens = parser.getTokens();
    if (kDebugMode) {
      print(tokens);
    }
  });
}

final Map<String, dynamic> payload = {
  "isMale": false,
  "pessoa": {"nome": "igor"},
  "enderecos": [
    {"cidade": "Gv"},
    {"cidade": "Rio"}
  ],
  "horarios": [
    {"nomeHora": "Manha"},
    {"nomeHora": "Tarde"}
  ],
  "profissao": "programador"
};

/*
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
*/