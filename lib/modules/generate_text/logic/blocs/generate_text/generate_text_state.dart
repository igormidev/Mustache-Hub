part of 'generate_text_bloc.dart';

@freezed
class GenerateTextState with _$GenerateTextState {
  const factory GenerateTextState.initial() = _Initial;

  const factory GenerateTextState.withData({
    required GenerateTextStateModel pipes,
  }) = _WithData;
}
