import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/logic/entities/pipe.dart';

part 'variables_state.dart';
part 'variables_event.dart';
part 'variables_bloc.freezed.dart';

class VariablesBloc extends Bloc<VariablesEvent, VariablesState> {
  VariablesBloc() : super(const VariablesState.normal(textVariables: []));
}
