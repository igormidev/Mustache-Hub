part of 'text_pipe_bloc.dart';

@freezed
class TextPipeState with _$TextPipeState {
  const factory TextPipeState.normal({
    required List<TextPipe> pipes,
  }) = _Initial;

  const factory TextPipeState.editing({
    required List<TextPipe> pipes,
    required int editingPipeIndex,
    required TextPipe editingPipe,
  }) = _Editing;
}
