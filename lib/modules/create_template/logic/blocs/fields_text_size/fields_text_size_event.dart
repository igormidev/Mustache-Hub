part of 'fields_text_size_bloc.dart';

@freezed
class FieldsTextSizeEvent with _$FieldsTextSizeEvent {
  const factory FieldsTextSizeEvent.setRegexIdentifierTextSize({
    required double size,
    required double testStringTextSize,
  }) = _SetRegexIdentifierTextSize;

  const factory FieldsTextSizeEvent.setTestStringTextSize({
    required double size,
  }) = _SetTestStringTextSize;

  const factory FieldsTextSizeEvent.increaseSizeRegexIdentifier() =
      _IncreaseSizeRegexIdentifier;
  const factory FieldsTextSizeEvent.decreaseSizeRegexIdentifier() =
      _DecreaseSizeRegexIdentifier;

  const factory FieldsTextSizeEvent.increaseSizeTestString() =
      _IncreaseSizeTestString;
  const factory FieldsTextSizeEvent.decreaseSizeTestString() =
      _DecreaseSizeTestString;
}
