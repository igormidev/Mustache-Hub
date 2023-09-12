import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_collection_repository.dart';
import 'package:collection_conductor/src/external/core/isar_service.dart';

class ImplCollectionRepository implements ICollectionRepository {
  final IsarService storageService;
  const ImplCollectionRepository({
    required this.storageService,
  });

  @override
  AsyncAnswer<HubCollection> getHubCollection({
    required String userId,
  }) {
    // TODO: implement getHubCollection
    throw UnimplementedError();
  }

  @override
  AsyncAnswer<UserCollection> getUserCollection({
    required String userId,
  }) {
    // TODO: implement getUserCollection
    throw UnimplementedError();
  }

  @override
  AsyncAnswer<void> updateHubCollection({
    required String userId,
    required HubCollection collection,
  }) {
    // TODO: implement updateHubCollection
    throw UnimplementedError();
  }

  @override
  AsyncAnswer<void> updateUserCollection({
    required String userId,
    required UserCollection collection,
  }) {
    // TODO: implement updateUserCollection
    throw UnimplementedError();
  }

  @override
  AsyncAnswer<UserCollection> restoreUserCollection({
    required String updateId,
  }) {
    return storageService.restoreUserCollection(updateId: updateId);
  }

  @override
  AsyncAnswer<void> storeUserCollection({
    required String userId,
    required String updateId,
    required UserCollection collection,
  }) {
    return storageService.storeUserCollection(
      data: collection,
    );
  }
}
