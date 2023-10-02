import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/user/interactor/repositories/i_user_model_repository.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';

class UserCubit extends Cubit<UserModelState> {
  final IUserModelRepository _userModelRepository;

  UserCubit({
    required IUserModelRepository userModelRepository,
  })  : _userModelRepository = userModelRepository,
        super(const UserModelState.loading());

  Future<void> getUser() async {
    emit(const UserModelState.loading());

    final response = await _userModelRepository.getUser();
    emit(response);
  }
}
