import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'fields_text_size_state.dart';
part 'fields_text_size_event.dart';
part 'fields_text_size_bloc.freezed.dart';
part 'fields_text_size_bloc.g.dart';

class FieldsTextSizeBloc
    extends HydratedBloc<FieldsTextSizeEvent, FieldsTextSizeState> {
  FieldsTextSizeBloc()
      : super(
          const FieldsTextSizeState.normal(
            regexIdenfifierTextSize: 14,
            testStringTextSize: 16,
          ),
        ) {
    on<_IncreaseSizeRegexIdentifier>(_increaseSizeRegexIdentifier);
    on<_DecreaseSizeRegexIdentifier>(_decreaseSizeRegexIdentifier);
    on<_IncreaseSizeTestString>(_increaseSizeTestString);
    on<_DecreaseSizeTestString>(_decreaseSizeTestString);
  }

  FutureOr<void> _increaseSizeRegexIdentifier(
    _IncreaseSizeRegexIdentifier event,
    Emitter<FieldsTextSizeState> emit,
  ) {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize + 1,
      testStringTextSize: state.testStringTextSize,
    ));
  }

  FutureOr<void> _decreaseSizeRegexIdentifier(
    _DecreaseSizeRegexIdentifier event,
    Emitter<FieldsTextSizeState> emit,
  ) {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize - 1,
      testStringTextSize: state.testStringTextSize,
    ));
  }

  FutureOr<void> _increaseSizeTestString(
    _IncreaseSizeTestString event,
    Emitter<FieldsTextSizeState> emit,
  ) {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize,
      testStringTextSize: state.testStringTextSize + 1,
    ));
  }

  FutureOr<void> _decreaseSizeTestString(
    _DecreaseSizeTestString event,
    Emitter<FieldsTextSizeState> emit,
  ) {
    emit(FieldsTextSizeState.normal(
      regexIdenfifierTextSize: state.regexIdenfifierTextSize,
      testStringTextSize: state.testStringTextSize - 1,
    ));
  }

  @override
  FieldsTextSizeState? fromJson(Map<String, dynamic> json) {
    return FieldsTextSizeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FieldsTextSizeState state) {
    return state.toJson();
  }
}
