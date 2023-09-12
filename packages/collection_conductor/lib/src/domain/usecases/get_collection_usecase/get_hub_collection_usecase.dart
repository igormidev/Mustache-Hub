import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_collection_repository.dart';

class GetHubCollectionUsecase {
  final ICollectionRepository collectionRepository;
  const GetHubCollectionUsecase({
    required this.collectionRepository,
  });

  AsyncAnswer<HubCollection> call({required String userId}) {
    return collectionRepository.getHubCollection(userId: userId);
  }
}
