import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'testing_state.dart';
part 'testing_event.dart';
part 'testing_bloc.freezed.dart';
part 'testing_bloc.g.dart';

class TestingBloc extends HydratedBloc<TestingEvent, TestingState> {
  TestingBloc() : super(const TestingState.normal(id: 0)) {
    on<_Increase>(_increase);
  }

  FutureOr<void> _increase(
    _Increase event,
    Emitter<TestingState> emit,
  ) {
    emit(TestingState.normal(id: state.id + 1));
  }

  @override
  TestingState? fromJson(Map<String, dynamic> json) {
    return TestingState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(TestingState state) {
    return state.toJson();
  }
}
