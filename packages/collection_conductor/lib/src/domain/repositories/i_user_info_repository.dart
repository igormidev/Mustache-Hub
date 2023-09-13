import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/user_related/user_stats.dart';

abstract class IUserInfoRepository {
  AsyncAnswer<UserStats> getUserStats({
    required String userId,
  });

  AsyncAnswer<VoidSucess> updateUserStats({
    required String userId,
    required UserStats userStats,
  });

  AsyncAnswer<VoidSucess> notifyCollectionChange({
    required String userId,
  });
}
