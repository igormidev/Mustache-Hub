import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/src/user/interactor/entities/user_stats.dart';

part 'user_stats_state.freezed.dart';

@freezed
abstract class UserStatsState with _$UserStatsState {
  factory UserStatsState.loading() = UserStatsLoading;
  factory UserStatsState.withNoData() = WithNoData;
  factory UserStatsState.withError({
    required Object error,
    required StackTrace stackTrace,
  }) = UserStatsWithError;
  factory UserStatsState.withData({
    required UserStats stats,
  }) = UserStatsWithData;
}
