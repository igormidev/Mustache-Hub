import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_collection_repository.dart';

class SaveUserCollectionUsecase {
  final ICollectionRepository collectionRepository;
  const SaveUserCollectionUsecase({
    required this.collectionRepository,
  });

  AsyncAnswer<void> call({
    required String userId,
    required UserCollection collection,
  }) {
    return collectionRepository.updateUserCollection(
      userId: userId,
      collection: collection,
    );
  }
}
