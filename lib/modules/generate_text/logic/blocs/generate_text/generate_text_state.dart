part of 'generate_text_bloc.dart';

@freezed
class GenerateTextState with _$GenerateTextState {
  const factory GenerateTextState.initial() = _Initial;

  const factory GenerateTextState.withValues({
    required Template template,
    required Map<String, dynamic> payload,
  }) = _LoadInProgress;
}
