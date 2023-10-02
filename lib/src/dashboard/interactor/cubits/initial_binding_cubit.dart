import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/dashboard/interactor/states/initial_binding_state.dart';

class InitialBindingCubit extends Cubit<InitialBindingState> {
  InitialBindingCubit() : super(InitialBindingState.gettingUserModel());

  void gotFatalErro(Object error, StackTrace stack) {
    emit(InitialBindingState.gotFatalError(
      error: error,
      stackTrace: stack,
    ));
  }

  void startSeachingUserModel() {
    emit(InitialBindingState.gettingUserModel());
  }

  void endedLoadingUserModel() {
    emit(InitialBindingState.gettingUserStats());
  }

  void endedLoadingUserStats() {
    emit(InitialBindingState.complete());
  }

  void completeBinding() {
    emit(InitialBindingState.complete());
  }
}
