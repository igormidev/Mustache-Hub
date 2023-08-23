part of 'models_bloc.dart';

@freezed
class ModelsEvent with _$ModelsEvent {
  const factory ModelsEvent.startEditingPipe({
    required int pipeIndex,
  }) = _StartEditingPipe;

  const factory ModelsEvent.createNewPipe() = _CreateNewPipe;

  const factory ModelsEvent.finishPipeEdit({
    required ModelPipe pipe,
  }) = _FinishPipeEdit;

  const factory ModelsEvent.updateEditPipe({
    required ModelPipe pipe,
  }) = _UpdateEditPipe;

  const factory ModelsEvent.deletePipe() = _DeletePipe;
}
