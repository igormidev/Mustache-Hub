import 'package:mustachehub/src/user/interactor/states/user_stats_state.dart';

abstract class IUserStatsRepository {
  Future<UserStatsState> getStats({required String userId});
}
