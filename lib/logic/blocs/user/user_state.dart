part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.loading() = _Loading;
  const factory UserState.noneUser() = _NoneUser;
  const factory UserState.logedIn({
    required UserModel user,
  }) = _LogedIn;
}

extension UserBlocExtension on BuildContext {
  UserModel? get user => get<UserBloc>().state.user;
}

extension UserStateExtension on UserState {
  UserModel? get user => mapOrNull(
        logedIn: (state) => state.user,
      );

  bool get isLoggedIn => maybeMap(
        logedIn: (_) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );
}
