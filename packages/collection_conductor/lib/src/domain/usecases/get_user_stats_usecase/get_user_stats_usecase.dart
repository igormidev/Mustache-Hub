import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/user_related/user_stats.dart';
import 'package:collection_conductor/src/domain/repositories/i_user_info_repository.dart';

class GetUserStatsUsecase {
  final IUserInfoRepository userInfoRepo;
  const GetUserStatsUsecase({
    required this.userInfoRepo,
  });

  AsyncAnswer<UserStats> call({
    required String userId,
  }) {
    return userInfoRepo.getUserStats(userId: userId);
  }
}
