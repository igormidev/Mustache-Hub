import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';
part 'theme_event.dart';
part 'theme_bloc.freezed.dart';
part 'theme_bloc.g.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(const ThemeState.normal(
          color: ThemeColor.blueGrey,
          brightness: Brightness.light,
        )) {
    on<_ChangeColor>(_changeColor);
    on<_ChangeBrightness>(_changeBrightness);
  }

  FutureOr<void> _changeColor(
    _ChangeColor event,
    Emitter<ThemeState> emit,
  ) {
    emit(ThemeState.normal(color: event.color, brightness: state.brightness));
  }

  FutureOr<void> _changeBrightness(
    _ChangeBrightness event,
    Emitter<ThemeState> emit,
  ) {
    emit(ThemeState.normal(color: state.color, brightness: event.brightness));
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) => ThemeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(ThemeState state) => state.toJson();
}
