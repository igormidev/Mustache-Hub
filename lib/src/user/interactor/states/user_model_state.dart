import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/src/user/interactor/cubits/user_cubit.dart';
import 'package:mustachehub/src/user/interactor/entities/user_model.dart';

part 'user_model_state.freezed.dart';

@freezed
class UserModelState with _$UserModelState {
  const factory UserModelState.loading() = _Loading;
  const factory UserModelState.withError({
    required Object error,
    required StackTrace stackTrace,
  }) = Error;
  const factory UserModelState.noneUser() = _NoneUser;
  const factory UserModelState.logedIn({
    required UserModel user,
  }) = _LogedIn;
}

extension UserBlocExtension on BuildContext {
  UserModel? get user => get<UserCubit>().state.user;
}

extension UserStateExtension on UserModelState {
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
