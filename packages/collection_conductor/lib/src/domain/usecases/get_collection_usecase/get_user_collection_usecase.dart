import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_collection_repository.dart';
import 'package:result_dart/result_dart.dart';

class GetUserCollectionUsecase {
  final ICollectionRepository collectionRepository;
  const GetUserCollectionUsecase({
    required this.collectionRepository,
  });

  AsyncAnswer<UserCollection> call({
    required String userId,
    required String updateId,
  }) async {
    final cacheResponse = await collectionRepository.restoreUserCollection(
      updateId: updateId,
    );

    return await cacheResponse.fold(
      (data) => Success(data),
      (failure) async {
        final apiResponse = await collectionRepository.getUserCollection(
          userId: userId,
        );
        return apiResponse.onSuccess((collection) async {
          await collectionRepository.storeUserCollection(
            userId: userId,
            collection: collection,
            updateId: updateId,
          );
        });
      },
    );
  }
}
