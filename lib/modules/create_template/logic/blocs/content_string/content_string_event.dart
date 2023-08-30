part of 'content_string_bloc.dart';

@freezed
class ContentStringEvent with _$ContentStringEvent {
  const factory ContentStringEvent.registerNormalText({
    required String newText,
  }) = _RegisterNormalText;
  const factory ContentStringEvent.registerTextWithTokens({
    required String newText,
    required List<Token> tokens,
  }) = _RegisterTextWithTokens;
}
