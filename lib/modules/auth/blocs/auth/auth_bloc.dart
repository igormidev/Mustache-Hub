import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/core/exceptions/custom_exception.dart';
import 'package:mustachehub/logic/entities/user.dart';
import 'package:mustachehub/logic/sources/user_source.dart';
import 'package:mustachehub/modules/auth/core/enums/auth_integrations.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._userServices) : super(const AuthState.normal()) {
    on<_CreateUser>(_createUser);
    on<_CreateUserWithIntegration>(_createUserWithIntegration);
  }

  final IUserSource _userServices;

  FutureOr<void> _createUser(
    _CreateUser event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    await Future.delayed(const Duration(seconds: 1));

    final response = await _userServices.createUserWithEmailAndPassword(
      email: event.email,
      password: event.password,
      userName: event.name,
    );

    response.fold(
      (error) {
        emit(AuthState.error(error: error));
      },
      (_) {
        emit(const AuthState.normal());
      },
    );
  }

  FutureOr<void> _createUserWithIntegration(
    _CreateUserWithIntegration event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    final Either<CustomException, UserModel> response =
        switch (event.choosedIntegration) {
      EAuthIntegrations.google => await _userServices.signInWithGoogleUser(),
    };

    response.fold(
      (error) => emit(AuthState.error(error: error)),
      (_) {
        emit(const AuthState.normal());
      },
    );
  }
}
