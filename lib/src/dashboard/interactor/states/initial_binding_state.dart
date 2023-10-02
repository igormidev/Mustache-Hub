import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_binding_state.freezed.dart';

@freezed
abstract class InitialBindingState with _$InitialBindingState {
  factory InitialBindingState.gotFatalError({
    required Object error,
    required StackTrace stackTrace,
  }) = GotFatalError;
  factory InitialBindingState.gettingUserModel() = GettingUserModel;
  factory InitialBindingState.gettingUserStats() = GettingUserStats;
  factory InitialBindingState.complete() = InitialBindingComplete;
}
