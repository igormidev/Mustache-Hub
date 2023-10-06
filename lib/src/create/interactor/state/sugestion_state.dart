import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/src/create/interactor/entities/token_identifier.dart';

part 'sugestion_state.freezed.dart';

@freezed
abstract class SugestionState with _$SugestionState {
  factory SugestionState.initial() = SugestionStateInitial;

  factory SugestionState.withSugestion({
    required String availibleVariablesString,
    required List<TokenIdentifier> tokenIdentifiers,
  }) = WithSugestion;
}
