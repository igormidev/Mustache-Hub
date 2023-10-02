import 'package:mustachehub/src/auth/interactor/states/sign_up_form_state.dart';

abstract class ISignInRepository {
  Future<SignUpFormState> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  });
}
