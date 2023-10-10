import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';

part 'sugestion_state.freezed.dart';

@freezed
abstract class SugestionState with _$SugestionState {
  factory SugestionState.withOnlyFlatMapCache({
    required String availibleVariablesString,
    required Map<String, TokenIdentifier> flatMap,
  }) = WithOnlyFlatMapCache;

  factory SugestionState.withSugestionAndFlatMapCache({
    required Map<String, TokenIdentifier> flatMap,
    required String availibleVariablesString,
    required Set<TokenIdentifier> tokenIdentifiers,
  }) = WithSugestion;
}
