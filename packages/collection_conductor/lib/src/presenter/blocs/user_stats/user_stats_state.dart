part of 'user_stats_bloc.dart';

@freezed
class UserStatsState with _$UserStatsState {
  const factory UserStatsState.loading() = _LoadInProgress;

  const factory UserStatsState.error() = _Error;

  const factory UserStatsState.withData({
    required UserStats userStats,
  }) = _WithData;
}
