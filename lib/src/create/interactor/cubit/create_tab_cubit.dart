import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/create/interactor/state/create_tab_state.dart';

class CreateTabCubit extends Cubit<CreateTabState> {
  CreateTabCubit() : super(const CreateTabState(index: 0));

  void changeTab(int index) {
    emit(CreateTabState(index: index));
  }
}
