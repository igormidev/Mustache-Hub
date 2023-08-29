part of 'variables_bloc.dart';

@freezed
class VariablesEvent with _$VariablesEvent {
  const factory VariablesEvent.loadInProgress() = _LoadInProgress;
}
