import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/src/user/interactor/entities/user_model.dart';
import 'package:mustachehub/src/user/interactor/repositories/i_user_model_repository.dart';
import 'package:mustachehub/src/user/interactor/states/user_model_state.dart';

class UserModelRepositoryImpl implements IUserModelRepository {
  @override
  Future<UserModelState> getUser() async {
    try {
      final fbUser = FirebaseAuth.instance.currentUser;
      if (fbUser == null) {
        return const UserModelState.noneUser();
      } else {
        return UserModelState.logedIn(user: UserModel.fromFirebase(fbUser));
      }
    } catch (error, stackTrace) {
      return UserModelState.withError(
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
