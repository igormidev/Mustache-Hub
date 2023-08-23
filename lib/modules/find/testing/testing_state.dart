part of 'testing_bloc.dart';

@freezed
class TestingState with _$TestingState {
  const factory TestingState.normal({required int id}) = _Normal;

  factory TestingState.fromJson(Map<String, dynamic> json) =>
      _$TestingStateFromJson(json);
}
