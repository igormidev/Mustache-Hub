import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:collection_conductor/src/domain/entities/user_related/user_stats.dart';
import 'package:collection_conductor/src/domain/usecases/get_user_stats_usecase/get_user_stats_usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_stats_state.dart';
part 'user_stats_event.dart';
part 'user_stats_bloc.freezed.dart';

class UserStatsBloc extends Bloc<UserStatsEvent, UserStatsState> {
  final GetUserStatsUsecase _getUserStatsUC;

  UserStatsBloc({required GetUserStatsUsecase getUserStatsUC})
      : _getUserStatsUC = getUserStatsUC,
        super(const UserStatsState.loading()) {
    on<_FetchStats>(_fetchStats);
  }

  FutureOr<void> _fetchStats(
    _FetchStats event,
    Emitter<UserStatsState> emit,
  ) async {
    final result = await _getUserStatsUC(userId: event.userId);
    result.fold(
      (stats) {
        emit(UserStatsState.withData(userStats: stats));
      },
      (failure) {
        //TODO(igor): manege failure getting the user stats
        emit(const UserStatsState.error());
      },
    );
  }
}
