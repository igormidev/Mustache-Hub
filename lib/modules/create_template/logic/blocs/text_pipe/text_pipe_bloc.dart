import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

part 'text_pipe_state.dart';
part 'text_pipe_event.dart';
part 'text_pipe_bloc.freezed.dart';

class TextPipeBloc extends Bloc<TextPipeEvent, TextPipeState> {
  TextPipeBloc() : super(const TextPipeState.normal(pipes: [])) {
    on<_StartEditingPipe>(_startEditingPipe);
    on<_CreateNewPipe>(_createNewPipe);
    on<_FinishPipeEdit>(_finishPipeEdit);
    on<_UpdateEditPipe>(_updateEditPipe);
    on<_DeletePipe>(_deletePipe);
  }

  FutureOr<void> _startEditingPipe(
    _StartEditingPipe event,
    Emitter<TextPipeState> emit,
  ) {
    final newPipeList = [...state.pipes];
    final pipe = newPipeList[event.pipeIndex];

    emit(TextPipeState.editing(
      pipes: newPipeList,
      editingPipeIndex: event.pipeIndex,
      editingPipe: pipe,
    ));
  }

  FutureOr<void> _createNewPipe(
    _CreateNewPipe event,
    Emitter<TextPipeState> emit,
  ) {
    const newPipe = TextPipe(name: '', description: '');
    emit(TextPipeState.editing(
      pipes: [...state.pipes, newPipe],
      editingPipe: newPipe,
      editingPipeIndex: state.pipes.length,
    ));
  }

  FutureOr<void> _finishPipeEdit(
    _FinishPipeEdit event,
    Emitter<TextPipeState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;
    final newPipeList = [...editing.pipes];
    newPipeList[editing.editingPipeIndex] = event.pipe;
    emit(TextPipeState.normal(pipes: newPipeList));
  }

  FutureOr<void> _updateEditPipe(
    _UpdateEditPipe event,
    Emitter<TextPipeState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;

    emit(TextPipeState.editing(
      pipes: editing.pipes,
      editingPipeIndex: editing.editingPipeIndex,
      editingPipe: event.pipe,
    ));
  }

  FutureOr<void> _deletePipe(
    _DeletePipe event,
    Emitter<TextPipeState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;

    final newList = [...editing.pipes];
    newList.removeAt(editing.editingPipeIndex);

    emit(TextPipeState.normal(pipes: newList));
  }
}
