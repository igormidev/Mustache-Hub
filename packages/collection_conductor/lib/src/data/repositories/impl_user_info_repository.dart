import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/data/adapters/user_related/user_stats_adapter.dart';
import 'package:collection_conductor/src/domain/entities/user_related/user_stats.dart';
import 'package:collection_conductor/src/domain/repositories/i_user_info_repository.dart';
import 'package:collection_conductor/src/external/core/storage_failure.dart';
import 'package:result_dart/result_dart.dart';

class ImplUserInfoRepository implements IUserInfoRepository {
  final UserStatsAdapter userStatsAdapter;
  final FirebaseFirestore firestore;
  const ImplUserInfoRepository({
    required this.userStatsAdapter,
    required this.firestore,
  });

  @override
  AsyncAnswer<UserStats> getUserStats({
    required String userId,
  }) async {
    final response = await firestore.collection('stats').doc(userId).get();
    final mapStat = response.data();
    if (mapStat == null) {
      return const NoObjectInStorage(
        address: 'usercollection',
      ).toFailure();
    }

    return userStatsAdapter.fromMap(mapStat).toSuccess();
  }

  @override
  AsyncAnswer<VoidSucess> updateUserStats({
    required String userId,
    required UserStats userStats,
  }) async {
    final statsRef = firestore.collection('stats').doc(userId);
    final payload = userStatsAdapter.toMap(userStats);
    await statsRef.set(payload);

    return const VoidSucess().toSuccess();
  }
}
