import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustachehub/src/user/interactor/entities/user_stats.dart';

class UserStatsAdapter {
  const UserStatsAdapter();
  UserStats fromMap(Map<String, dynamic> map) {
    return UserStats(
      collectionUpdatedAt: (map['collectionUpdatedAt'] as Timestamp).toDate(),
      userTierIndex: map['userTier'] as int,
    );
  }
}
