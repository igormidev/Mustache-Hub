part of 'models_bloc.dart';

@freezed
class ModelsState with _$ModelsState {
  const factory ModelsState.normal({
    required List<ModelPipe> pipes,
  }) = _Initial;

  const factory ModelsState.editing({
    required List<ModelPipe> pipes,
    required int editingPipeIndex,
    required ModelPipe editingPipe,
  }) = _Editing;
}
