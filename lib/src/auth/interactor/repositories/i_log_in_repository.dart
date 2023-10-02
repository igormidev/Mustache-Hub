import 'package:mustachehub/src/auth/interactor/states/login_form_state.dart';

abstract class ILogInRepository {
  Future<LoginFormState> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  });
}
