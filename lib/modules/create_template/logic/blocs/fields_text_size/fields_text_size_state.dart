part of 'fields_text_size_bloc.dart';

@freezed
class FieldsTextSizeState with _$FieldsTextSizeState {
  const factory FieldsTextSizeState.normal({
    required double regexIdenfifierTextSize,
    required double testStringTextSize,
  }) = _Normal;

  factory FieldsTextSizeState.fromJson(Map<String, Object?> json) =>
      _$FieldsTextSizeStateFromJson(json);
}
