part of 'variables_bloc.dart';

@freezed
class VariablesEvent with _$VariablesEvent {
  const factory VariablesEvent.updateTextVariables({
    required List<TextPipe> textPipes,
  }) = _UpdateTextVariables;

  const factory VariablesEvent.updateBooleanVariables({
    required List<BooleanPipe> booleanPipes,
  }) = _UpdateBooleanVariables;

  const factory VariablesEvent.updateModelVariables({
    required List<ModelPipe> modelPipes,
  }) = _UpdateModelVariables;
}
