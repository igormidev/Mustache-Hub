part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.normal() = _Normal;
  const factory LoginState.loading() = _LoadInProgress;
  const factory LoginState.error({
    required CustomException error,
  }) = _WithError;
}
