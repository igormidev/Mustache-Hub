import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';

abstract class IUserModelRepository {
  Future<UserModelState> getUser();
}
