part of 'text_pipe_bloc.dart';

@freezed
class TextPipeEvent with _$TextPipeEvent {
  const factory TextPipeEvent.startEditingPipe({
    required int pipeIndex,
  }) = _StartEditingPipe;

  const factory TextPipeEvent.createNewPipe() = _CreateNewPipe;

  const factory TextPipeEvent.finishPipeEdit({
    required TextPipe pipe,
  }) = _FinishPipeEdit;

  const factory TextPipeEvent.updateEditPipe({
    required TextPipe pipe,
  }) = _UpdateEditPipe;

  const factory TextPipeEvent.deletePipe() = _DeletePipe;
}
