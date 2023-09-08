part of 'generate_text_bloc.dart';

@freezed
class GenerateTextEvent with _$GenerateTextEvent {
  const factory GenerateTextEvent.selectTemplate({
    required Template template,
  }) = _SelectTemplate;

  const factory GenerateTextEvent.addTextPayloadValue({
    required TextPipe pipe,
    required String? value,
  }) = _AddTextPayloadValue;

  const factory GenerateTextEvent.addBooleanPayloadValue({
    required BooleanPipe pipe,
    required bool value,
  }) = _AddBooleanPayloadValue;

  const factory GenerateTextEvent.unSelectTemplate() = _UnSelectTemplate;
}
