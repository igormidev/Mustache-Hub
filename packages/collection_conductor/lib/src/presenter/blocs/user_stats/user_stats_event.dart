part of 'user_stats_bloc.dart';

@freezed
class UserStatsEvent with _$UserStatsEvent {
  factory UserStatsEvent.fetchStats({
    required String userId,
  }) = _FetchStats;
}
