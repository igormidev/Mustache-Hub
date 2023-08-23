part of 'bolean_pipe_bloc.dart';

@freezed
class BoleanPipeState with _$BoleanPipeState {
  const factory BoleanPipeState.normal({
    required List<BoleanPipe> pipes,
  }) = _Initial;

  const factory BoleanPipeState.editing({
    required List<BoleanPipe> pipes,
    required int editingPipeIndex,
    required BoleanPipe editingPipe,
  }) = _Editing;
}
