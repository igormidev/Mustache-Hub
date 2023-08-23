import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

part 'models_state.dart';
part 'models_event.dart';
part 'models_bloc.freezed.dart';

class ModelsBloc extends Bloc<ModelsEvent, ModelsState> {
  ModelsBloc() : super(const ModelsState.normal(pipes: [])) {
    on<_StartEditingPipe>(_startEditingPipe);
    on<_CreateNewPipe>(_createNewPipe);
    on<_FinishPipeEdit>(_finishPipeEdit);
    on<_UpdateEditPipe>(_updateEditPipe);
    on<_DeletePipe>(_deletePipe);
  }

  FutureOr<void> _startEditingPipe(
    _StartEditingPipe event,
    Emitter<ModelsState> emit,
  ) {
    final newPipeList = [...state.pipes];
    final pipe = newPipeList[event.pipeIndex];

    emit(ModelsState.editing(
      pipes: newPipeList,
      editingPipeIndex: event.pipeIndex,
      editingPipe: pipe,
    ));
  }

  FutureOr<void> _createNewPipe(
    _CreateNewPipe event,
    Emitter<ModelsState> emit,
  ) {
    const newPipe = ModelPipe(name: '', description: '', values: []);
    emit(ModelsState.editing(
      pipes: [...state.pipes, newPipe],
      editingPipe: newPipe,
      editingPipeIndex: state.pipes.length,
    ));
  }

  FutureOr<void> _finishPipeEdit(
    _FinishPipeEdit event,
    Emitter<ModelsState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;
    final newPipeList = [...editing.pipes];
    newPipeList[editing.editingPipeIndex] = event.pipe;
    emit(ModelsState.normal(pipes: newPipeList));
  }

  FutureOr<void> _updateEditPipe(
    _UpdateEditPipe event,
    Emitter<ModelsState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;

    emit(ModelsState.editing(
      pipes: editing.pipes,
      editingPipeIndex: editing.editingPipeIndex,
      editingPipe: event.pipe,
    ));
  }

  FutureOr<void> _deletePipe(
    _DeletePipe event,
    Emitter<ModelsState> emit,
  ) {
    final editing = state.mapOrNull(editing: (v) => v);
    if (editing == null) return null;

    final newList = [...editing.pipes];
    newList.removeAt(editing.editingPipeIndex);

    emit(ModelsState.normal(pipes: newList));
  }
}
