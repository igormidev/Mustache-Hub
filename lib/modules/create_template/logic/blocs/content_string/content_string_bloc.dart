import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_template/mustache_template.dart';

part 'content_string_state.dart';
part 'content_string_event.dart';
part 'content_string_bloc.freezed.dart';

class ContentStringBloc extends Bloc<ContentStringEvent, ContentStringState> {
  ContentStringBloc()
      : super(const ContentStringState.normal(currentText: '')) {
    on<_RegisterNormalText>(_registerNormalText);
    on<_RegisterTextWithTokens>(_registerTextWithTokens);
  }

  FutureOr<void> _registerNormalText(
    _RegisterNormalText event,
    Emitter<ContentStringState> emit,
  ) {
    emit(ContentStringState.normal(currentText: event.newText));
  }

  FutureOr<void> _registerTextWithTokens(
    _RegisterTextWithTokens event,
    Emitter<ContentStringState> emit,
  ) {
    emit(ContentStringState.withToken(
      currentText: event.newText,
      tokensInIt: event.tokens,
    ));
  }
}
