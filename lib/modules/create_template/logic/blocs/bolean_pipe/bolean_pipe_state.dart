part of 'bolean_pipe_bloc.dart';

@freezed
class BoleanPipeState with _$BoleanPipeState {
  const factory BoleanPipeState.normal({
    required List<BooleanPipe> pipes,
  }) = _Initial;

  const factory BoleanPipeState.editing({
    required List<BooleanPipe> pipes,
    required int editingPipeIndex,
    required BooleanPipe editingPipe,
  }) = _Editing;
}
