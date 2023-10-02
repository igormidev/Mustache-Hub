import 'package:mustachehub/src/dashboard/interactor/states/navigation_possibilities_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationPossibilitiesCubit extends Cubit<NavigationPossibilitiesState> {
  NavigationPossibilitiesCubit() : super(LoggedOut());

  void setUserToLoggedIn() {
    emit(LoggedIn());
  }

  void setUserToLoggedOut() {
    emit(LoggedOut());
  }
}
