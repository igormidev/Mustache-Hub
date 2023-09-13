import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_collection_repository.dart';

class SaveHubCollectionUsecase {
  final ICollectionRepository collectionRepository;
  const SaveHubCollectionUsecase({
    required this.collectionRepository,
  });

  AsyncAnswer<void> call({
    required String userId,
    required HubCollection collection,
  }) {
    return collectionRepository.updateHubCollection(
      userId: userId,
      collection: collection,
    );
  }
}
