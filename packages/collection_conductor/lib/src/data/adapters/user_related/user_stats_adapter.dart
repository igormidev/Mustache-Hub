import 'package:collection_conductor/src/domain/entities/user_related/user_stats.dart';

class UserStatsAdapter {
  UserStats fromMap(Map<String, dynamic> map) {
    return UserStats(
      lastCollectionUpdateId: map['lastCollectionUpdateId'],
      tier: PremiumTier.values[map['tier']],
    );
  }

  Map<String, dynamic> toMap(UserStats stats) {
    return {
      'tier': stats.tier.index,
      'lastCollectionUpdateId': stats.lastCollectionUpdateId,
    };
  }
}
