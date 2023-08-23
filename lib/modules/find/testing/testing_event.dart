part of 'testing_bloc.dart';

@freezed
class TestingEvent with _$TestingEvent {
  const factory TestingEvent.increase() = _Increase;
}
