import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_template/mustache_template.dart';
import 'package:mustachehub/src/create/interactor/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';
import 'package:mustachehub/src/create/interactor/state/sugestion_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class SugestionCubit extends Cubit<SugestionState> {
  final TokenIdentifierFlatMapAdapter tokenIdentifierAdapter;
  SugestionCubit({required this.tokenIdentifierAdapter})
      : super(SugestionState.initial());

  void set({
    required int cursorIndex,
    required List<Token> tokens,
    required final List<TextPipe> textPipes,
    required final List<BooleanPipe> booleanPipes,
    required final List<ModelPipe> modelPipes,
  }) {
    final List<TokenIdentifier> identifiers = [];

    final validTokens = tokens.where(isIdentifierOrSirgil);

    final allVariables = tokenIdentifierAdapter.toFlatMap(
      textPipes: textPipes,
      booleanPipes: booleanPipes,
      modelPipes: modelPipes,
    );

    for (final pipe in textPipes) {
      identifiers.add(TokenIdentifier.text(name: pipe.name));
    }
    for (final pipe in booleanPipes) {
      identifiers.add(TokenIdentifier.boolean(name: pipe.name));
    }
    for (final pipe in modelPipes) {
      final modelTokenIdentifier = allVariables[pipe.name];
      if (modelTokenIdentifier != null) {
        identifiers.add(modelTokenIdentifier);
      }
    }

    final Map<ModelTokenIdentifier, int> modelOcrrBeforeCursor = {};

    Token? lastToken;
    for (final token in validTokens) {
      // We don't want to see tokens that
      // are before the cursor of the user
      if (token.start >= cursorIndex) break;

      final TokenIdentifier? identifier = allVariables[token.start];
      if (identifier == null) continue;
      if (identifier is! ModelTokenIdentifier) continue;

      if (lastToken == null) continue;

      final identifierOccourences = modelOcrrBeforeCursor[identifier] ?? 0;

      final isLastTokenSigil = lastToken.type == TokenType.sigil;
      if (isLastTokenSigil == false) continue;

      final isLastTokenOpenSigil =
          lastToken.value == '^' || lastToken.value == '#';
      final isLastTokenCloseSigil = !isLastTokenOpenSigil;

      if (isLastTokenOpenSigil) {
        modelOcrrBeforeCursor.addAll({
          identifier: identifierOccourences + 1,
        });
      } else if (isLastTokenCloseSigil) {
        if (identifierOccourences > 0) {
          modelOcrrBeforeCursor.addAll({
            identifier: identifierOccourences - 1,
          });
        }
      }

      lastToken = token;
    }

    modelOcrrBeforeCursor.forEach((key, value) {
      if (value > 0) {
        identifiers.add(key);
        identifiers.addAll(key.texts);
        identifiers.addAll(key.boolean);
        identifiers.addAll(key.subModels);
      }
    });

    emit(SugestionState.withSugestion(
      availibleVariablesString: '',
      tokenIdentifiers: identifiers,
    ));
  }

  void hideSugestion() => emit(SugestionState.initial());
}

bool isIdentifierOrSirgil(Token e) =>
    e.type == TokenType.identifier || e.type == TokenType.sigil;

String getVarText({
  required final List<TextPipe> textPipes,
  required final List<BooleanPipe> booleanPipes,
  required final List<ModelPipe> modelPipes,
  required List<TokenIdentifier> currentIdentifiers,
}) {
  String text = '''''';
  for (final pipe in textPipes) {
    text += '📄 ${pipe.name}\n';
  }
  for (final pipe in booleanPipes) {
    text += '🔗 ${pipe.name}\n';
  }

  for (final identifier in currentIdentifiers) {}

  return text;
}
