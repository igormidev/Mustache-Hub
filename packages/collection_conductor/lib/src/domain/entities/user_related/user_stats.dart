// ignore_for_file: public_member_api_docs, sort_constructors_first

class UserStats {
  final String lastCollectionUpdateId;
  final PremiumTier tier;

  const UserStats({
    required this.lastCollectionUpdateId,
    required this.tier,
  });

  UserStats copyWith({
    String? lastCollectionUpdateId,
    PremiumTier? tier,
  }) {
    return UserStats(
      lastCollectionUpdateId:
          lastCollectionUpdateId ?? this.lastCollectionUpdateId,
      tier: tier ?? this.tier,
    );
  }
}

enum PremiumTier {
  free,
  starter,
  unlimited,
  pro;

  const PremiumTier();
}
