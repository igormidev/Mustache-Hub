import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustachehub/src/user/data/adapters/user_stats_adapter.dart';
import 'package:mustachehub/src/user/interactor/repositories/i_user_stats_repository.dart';
import 'package:mustachehub/src/user/interactor/states/user_stats_state.dart';

class UserStatsRepositoryImpl implements IUserStatsRepository {
  final FirebaseFirestore _firestore;
  final UserStatsAdapter userStatsAdapter;

  UserStatsRepositoryImpl({
    FirebaseFirestore? firestore,
    this.userStatsAdapter = const UserStatsAdapter(),
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<UserStatsState> getStats({required String userId}) async {
    try {
      final userStatsDoc =
          await _firestore.collection('stats').doc(userId).get();
      final userStatsMap = userStatsDoc.data();

      return UserStatsState.withData(
        stats: userStatsAdapter.fromMap(userStatsMap!),
      );
    } catch (error, stackTrace) {
      return UserStatsState.withError(
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
