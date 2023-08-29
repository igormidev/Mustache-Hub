part of 'variables_bloc.dart';

@freezed
class VariablesState with _$VariablesState {
  const factory VariablesState.normal({
    required List<TextPipe> textPipes,
    required List<BooleanPipe> booleanPipes,
    required List<ModelPipe> modelPipes,
  }) = Normal;

  factory VariablesState.fromJson(Map<String, dynamic> json) =>
      _$VariablesStateFromJson(json);
}
