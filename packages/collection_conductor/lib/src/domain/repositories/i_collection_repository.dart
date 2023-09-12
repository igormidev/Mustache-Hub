import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';

abstract class ICollectionRepository {
  AsyncAnswer<HubCollection> getHubCollection({
    required String userId,
  });
  AsyncAnswer<UserCollection> getUserCollection({
    required String userId,
  });
  AsyncAnswer<void> updateUserCollection({
    required String userId,
    required UserCollection collection,
  });
  AsyncAnswer<void> updateHubCollection({
    required String userId,
    required HubCollection collection,
  });

  AsyncAnswer<UserCollection> restoreUserCollection({
    required String updateId,
  });
  AsyncAnswer<void> storeUserCollection({
    required String userId,
    required String updateId,
    required UserCollection collection,
  });
}
