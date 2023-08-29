import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

part 'variables_state.dart';
part 'variables_event.dart';
part 'variables_bloc.freezed.dart';
part 'variables_bloc.g.dart';

class VariablesBloc extends HydratedBloc<VariablesEvent, VariablesState> {
  VariablesBloc()
      : super(const VariablesState.normal(
          textPipes: [],
          booleanPipes: [],
          modelPipes: [],
        )) {
    on<_UpdateTextVariables>(_updateTextVariables);
    on<_UpdateBooleanVariables>(_updateBooleanVariables);
    on<_UpdateModelVariables>(_updateModelVariables);
  }

  FutureOr<void> _updateTextVariables(
    _UpdateTextVariables event,
    Emitter<VariablesState> emit,
  ) {
    emit(
      VariablesState.normal(
        textPipes: event.textPipes,
        booleanPipes: state.booleanPipes,
        modelPipes: state.modelPipes,
      ),
    );
  }

  FutureOr<void> _updateBooleanVariables(
    _UpdateBooleanVariables event,
    Emitter<VariablesState> emit,
  ) {
    emit(
      VariablesState.normal(
        textPipes: state.textPipes,
        booleanPipes: event.booleanPipes,
        modelPipes: state.modelPipes,
      ),
    );
  }

  FutureOr<void> _updateModelVariables(
    _UpdateModelVariables event,
    Emitter<VariablesState> emit,
  ) {
    emit(
      VariablesState.normal(
        textPipes: state.textPipes,
        booleanPipes: state.booleanPipes,
        modelPipes: event.modelPipes,
      ),
    );
  }

  @override
  VariablesState? fromJson(Map<String, dynamic> json) {
    return VariablesState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(VariablesState state) {
    return state.toJson();
  }
}
