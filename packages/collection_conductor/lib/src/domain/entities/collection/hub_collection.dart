import 'package:collection_conductor/src/domain/entities/collection/i_collection_info.dart';
import 'package:collection_conductor/src/domain/entities/mustache_repository.dart';

class HubCollection extends ICollectionInfo<HubCollection>
    implements MustacheRepository {
  const HubCollection({
    required super.itens,
    required super.folders,
    required this.stars,
    required this.isPrivate,
    required this.readPermissionUserIds,
    required this.writePermissionUserIds,
  });

  @override
  final bool isPrivate;

  @override
  final List<String> readPermissionUserIds;

  @override
  final int stars;

  @override
  final List<String> writePermissionUserIds;
}
