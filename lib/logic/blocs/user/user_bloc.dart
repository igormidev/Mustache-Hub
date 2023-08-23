import 'dart:async';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/core/navigation/navigation_extension.dart';
import 'package:mustachehub/logic/entities/user.dart';

part 'user_state.dart';
part 'user_event.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.loading()) {
    on<_SetUser>(_setUser);
  }

  FutureOr<void> _setUser(
    _SetUser event,
    Emitter<UserState> emit,
  ) {
    if (event.user != null) {
      emit(UserState.logedIn(user: event.user!));
    } else {
      emit(const UserState.noneUser());
    }
  }
}
