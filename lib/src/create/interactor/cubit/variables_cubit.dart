import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/create/interactor/state/variables_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/pipe.dart';

class VariablesCubit extends Cubit<VariablesState> {
  VariablesCubit()
      : super(const VariablesState(
          textPipes: [],
          booleanPipes: [],
          modelPipes: [],
        ));

  void updateTextVariables({
    required List<TextPipe> textPipes,
  }) {
    emit(VariablesState(
      textPipes: textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: state.modelPipes,
    ));
  }

  void updateBooleanVariables({
    required List<BooleanPipe> booleanPipes,
  }) {
    emit(VariablesState(
      textPipes: state.textPipes,
      booleanPipes: booleanPipes,
      modelPipes: state.modelPipes,
    ));
  }

  void updateModelVariables({
    required List<ModelPipe> modelPipes,
  }) {
    emit(VariablesState(
      textPipes: state.textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: modelPipes,
    ));
  }
}
