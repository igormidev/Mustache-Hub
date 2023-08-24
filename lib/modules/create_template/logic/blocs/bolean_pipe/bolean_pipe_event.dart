part of 'bolean_pipe_bloc.dart';

@freezed
class BoleanPipeEvent with _$BoleanPipeEvent {
  const factory BoleanPipeEvent.startEditingPipe({
    required int pipeIndex,
  }) = _StartEditingPipe;

  const factory BoleanPipeEvent.createNewPipe() = _CreateNewPipe;

  const factory BoleanPipeEvent.finishPipeEdit({
    required BooleanPipe pipe,
  }) = _FinishPipeEdit;

  const factory BoleanPipeEvent.updateEditPipe({
    required BooleanPipe pipe,
  }) = _UpdateEditPipe;

  const factory BoleanPipeEvent.deletePipe() = _DeletePipe;
}
