part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.normal() = _Normal;
  const factory AuthState.loading() = _LoadInProgress;
  const factory AuthState.error({
    required CustomException error,
  }) = _WithError;
}
