import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/data/adapters/collection/hub_collection_adapter.dart';
import 'package:collection_conductor/src/data/adapters/collection/user_collection_adapter.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_collection_repository.dart';
import 'package:collection_conductor/src/domain/repositories/i_user_info_repository.dart';
import 'package:collection_conductor/src/external/core/isar_service.dart';
import 'package:collection_conductor/src/external/core/storage_failure.dart';
import 'package:result_dart/result_dart.dart';

class ImplCollectionRepository implements ICollectionRepository {
  final IsarService storageService;
  final FirebaseFirestore firestore;
  final HubCollectionAdapter hubCollectionAdapter;
  final UserCollectionAdapter userCollectionAdapter;
  final IUserInfoRepository userInfoRepository;

  const ImplCollectionRepository({
    required this.storageService,
    required this.firestore,
    required this.hubCollectionAdapter,
    required this.userCollectionAdapter,
    required this.userInfoRepository,
  });

  @override
  AsyncAnswer<HubCollection> getHubCollection({
    required String userId,
  }) async {
    final hubResponse =
        await firestore.collection('hubcollection').doc(userId).get();
    final hubMap = hubResponse.data();

    if (hubMap == null) {
      return const NoObjectInStorage(
        address: 'hubcollection',
      ).toFailure();
    }

    return hubCollectionAdapter.fromMap(hubMap).toSuccess();
  }

  @override
  AsyncAnswer<UserCollection> getUserCollection({
    required String userId,
  }) async {
    final userResponse =
        await firestore.collection('usercollection').doc(userId).get();
    final userMap = userResponse.data();
    if (userMap == null) {
      return const NoObjectInStorage(
        address: 'usercollection',
      ).toFailure();
    }

    return userCollectionAdapter.fromMap(userMap).toSuccess();
  }

  @override
  AsyncAnswer<void> updateHubCollection({
    required String userId,
    required HubCollection collection,
  }) async {
    final ref = firestore.collection('usercollection').doc(userId);
    await ref.set(hubCollectionAdapter.toMap(collection));
    await firestore.waitForPendingWrites();
    return const VoidSucess().toSuccess();
  }

  @override
  AsyncAnswer<void> updateUserCollection({
    required String userId,
    required UserCollection collection,
  }) async {
    await userInfoRepository.notifyCollectionChange(userId: userId);
    final userCollRef = firestore.collection('usercollection').doc(userId);

    await userCollRef.set(
      userCollectionAdapter.toMap(collection),
    );

    await firestore.waitForPendingWrites();
    return const VoidSucess().toSuccess();
  }

  @override
  AsyncAnswer<UserCollection> restoreUserCollection({
    required String updateId,
  }) {
    return storageService.restoreUserCollection(updateId: updateId);
  }

  @override
  AsyncAnswer<void> storeUserCollection({
    required String updateId,
    required UserCollection collection,
  }) {
    return storageService.storeUserCollection(
      updateId: updateId,
      data: collection,
    );
  }
}
