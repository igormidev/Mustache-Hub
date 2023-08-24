import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

part 'bolean_pipe_state.dart';
part 'bolean_pipe_event.dart';
part 'bolean_pipe_bloc.freezed.dart';

class BoleanPipeBloc extends Bloc<BoleanPipeEvent, BoleanPipeState> {
  BoleanPipeBloc() : super(const BoleanPipeState.normal(pipes: [])) {
    on<_StartEditingPipe>(_startEditingPipe);
    on<_CreateNewPipe>(_createNewPipe);
    on<_FinishPipeEdit>(_finishPipeEdit);
    on<_UpdateEditPipe>(_updateEditPipe);
    on<_DeletePipe>(_deletePipe);
  }

  FutureOr<void> _startEditingPipe(
    _StartEditingPipe event,
    Emitter<BoleanPipeState> emit,
  ) {
    final newPipeList = [...state.pipes];
    final pipe = newPipeList[event.pipeIndex];

    emit(BoleanPipeState.editing(
      pipes: newPipeList,
      editingPipeIndex: event.pipeIndex,
      editingPipe: pipe,
    ));
  }

  FutureOr<void> _createNewPipe(
    _CreateNewPipe event,
    Emitter<BoleanPipeState> emit,
  ) {
    const newPipe = BooleanPipe(name: '', description: '');
    emit(BoleanPipeState.editing(
      pipes: [...state.pipes, newPipe],
      editingPipe: newPipe,
      editingPipeIndex: state.pipes.length,
    ));
  }

  FutureOr<void> _finishPipeEdit(
    _FinishPipeEdit event,
    Emitter<BoleanPipeState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;
    final newPipeList = [...editing.pipes];
    newPipeList[editing.editingPipeIndex] = event.pipe;
    emit(BoleanPipeState.normal(pipes: newPipeList));
  }

  FutureOr<void> _updateEditPipe(
    _UpdateEditPipe event,
    Emitter<BoleanPipeState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;

    emit(BoleanPipeState.editing(
      pipes: editing.pipes,
      editingPipeIndex: editing.editingPipeIndex,
      editingPipe: event.pipe,
    ));
  }

  FutureOr<void> _deletePipe(
    _DeletePipe event,
    Emitter<BoleanPipeState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;

    final newList = [...editing.pipes];
    newList.removeAt(editing.editingPipeIndex);

    emit(BoleanPipeState.normal(pipes: newList));
  }
}
