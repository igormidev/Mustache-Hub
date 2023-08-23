part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.logInUserWithCredentials({
    required String email,
    required String password,
  }) = _LogInUserWithCredential;

  const factory LoginEvent.logInUserWithIntegration({
    required EAuthIntegrations choosedIntegration,
  }) = _LogInUserWithIntegration;
}
