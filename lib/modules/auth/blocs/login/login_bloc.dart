import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/core/exceptions/custom_exception.dart';
import 'package:mustachehub/logic/entities/user.dart';
import 'package:mustachehub/logic/sources/user_source.dart';
import 'package:mustachehub/modules/auth/core/enums/auth_integrations.dart';

part 'login_state.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._userServices) : super(const LoginState.normal()) {
    on<_LogInUserWithCredential>(_logInUserWithCredential);
    on<_LogInUserWithIntegration>(_logInUserWithIntegration);
  }

  final IUserSource _userServices;

  FutureOr<void> _logInUserWithCredential(
    _LogInUserWithCredential event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());

    final response = await _userServices.signInUserWithEmailAndPassword(
      email: event.email,
      password: event.password,
    );

    response.fold(
      (error) {
        emit(LoginState.error(error: error));
      },
      (_) {
        emit(const LoginState.normal());
      },
    );
    return null;
  }

  FutureOr<void> _logInUserWithIntegration(
    _LogInUserWithIntegration event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.loading());

    final Either<CustomException, UserModel> response =
        switch (event.choosedIntegration) {
      EAuthIntegrations.google => await _userServices.signInWithGoogleUser(),
    };

    response.fold(
      (error) => emit(LoginState.error(error: error)),
      (_) {
        emit(const LoginState.normal());
      },
    );
  }
}
