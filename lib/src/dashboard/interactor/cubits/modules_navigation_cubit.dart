import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/dashboard/interactor/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/src/dashboard/interactor/states/modules_navigation_state.dart';

class ModulesNavigationCubit extends Cubit<ModulesNavigationState> {
  ModulesNavigationCubit()
      : super(ModulesNavigationState(
          selectedPossibility: ENavigationPossibilities.collection,
        ));

  void selectNavigation(ENavigationPossibilities selectedValue) {
    emit(ModulesNavigationState(selectedPossibility: selectedValue));
  }
}
