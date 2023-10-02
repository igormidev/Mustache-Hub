import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/src/auth/data/mixins/manege_firebase_auth_error_mixin.dart';
import 'package:mustachehub/src/auth/interactor/repositories/i_log_in_repository.dart';
import 'package:mustachehub/src/auth/interactor/states/login_form_state.dart';

class LogInRepositoryImpl
    with ManegeFirebaseAuthErrorMixin
    implements ILogInRepository {
  final FirebaseAuth _fb;

  LogInRepositoryImpl({
    FirebaseAuth? firebaseAuth,
  }) : _fb = firebaseAuth ?? FirebaseAuth.instance;

  @override
  Future<LoginFormState> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return manegeDefaultErrorWrapper(
      func: () async {
        await _fb.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        return LoginFormState.success();
      },
      toState: (error) {
        return LoginFormState.error(error: error);
      },
    );
  }
}
