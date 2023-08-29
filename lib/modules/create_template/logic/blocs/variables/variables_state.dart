part of 'variables_bloc.dart';

@freezed
class VariablesState with _$VariablesState {
  const factory VariablesState.normal({
    required List<TextPipe> textVariables,
  }) = _Initial;
}
