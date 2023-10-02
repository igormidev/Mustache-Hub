import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/user/interactor/repositories/i_user_stats_repository.dart';
import 'package:mustachehub/src/user/interactor/states/user_stats_state.dart';

class UserStatsCubit extends Cubit<UserStatsState> {
  final IUserStatsRepository _userInfoRepository;

  UserStatsCubit({
    required IUserStatsRepository userInfoRepository,
  })  : _userInfoRepository = userInfoRepository,
        super(UserStatsState.loading());

  Future<void> getUserStats(String userId) async {
    emit(UserStatsState.loading());
    final response = await _userInfoRepository.getStats(userId: userId);
    emit(response);
  }

  void unregisterUser() {
    emit(UserStatsState.loading());
    emit(UserStatsState.withNoData());
  }
}
