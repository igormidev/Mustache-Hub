part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.createUserWithCredentials({
    required String name,
    required String email,
    required String password,
  }) = _CreateUser;

  const factory AuthEvent.createUserWithIntegration({
    required EAuthIntegrations choosedIntegration,
  }) = _CreateUserWithIntegration;
}
