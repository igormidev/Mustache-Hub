import 'package:collection_conductor/src/domain/entities/collection/i_collection_info.dart';

class UserCollection extends ICollectionInfo<UserCollection> {
  const UserCollection({
    required super.itens,
    required super.folders,
  });
}
