part of 'generate_text_bloc.dart';

@freezed
class GenerateTextEvent with _$GenerateTextEvent {
  const factory GenerateTextEvent.selectTemplate({
    required Template template,
  }) = _SelectTemplate;

  const factory GenerateTextEvent.addPayloadValue({
    required Pipe pipe,
    required dynamic value,
  }) = _AddPayloadValue;

  const factory GenerateTextEvent.unSelectTemplate() = _UnSelectTemplate;
}
