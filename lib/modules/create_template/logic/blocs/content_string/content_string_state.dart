part of 'content_string_bloc.dart';

@freezed
class ContentStringState with _$ContentStringState {
  const factory ContentStringState.normal({
    required String currentText,
  }) = Normal;

  const factory ContentStringState.withToken({
    required String currentText,
    required List<Token> tokensInIt,
  }) = WithToken;
}
