import 'package:collection_conductor/src/data/adapters/package/mustache_package_info_adapter.dart';
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';

class HubCollectionAdapter {
  final MustachePackageInfoAdapter mustacheAdapter;
  const HubCollectionAdapter({
    required this.mustacheAdapter,
  });
  HubCollection fromMap(Map map) {
    final readPermissionUserIds =
        (map['readPermissionUserIds'] as List<dynamic>).cast<String>();
    final writePermissionUserIds =
        (map['writePermissionUserIds'] as List<dynamic>).cast<String>();

    final itens = (map['itens'] as List<dynamic>).cast<Map>().map((map) {
      return mustacheAdapter.fromMap(map);
    }).toList();
    final folders = (map['folders'] as List<dynamic>).cast<Map>().map((map) {
      return fromMap(map);
    }).toList();

    return HubCollection(
      itens: itens,
      folders: folders,
      isPrivate: map['isPrivate'] as bool,
      stars: map['stars'] as int,
      readPermissionUserIds: readPermissionUserIds,
      writePermissionUserIds: writePermissionUserIds,
    );
  }

  Map<String, dynamic> toMap(HubCollection hub) {
    final folders = hub.folders.map((hub) {
      return toMap(hub);
    }).toList();
    final itens = hub.itens.map((info) {
      return mustacheAdapter.toMap(info);
    }).toList();
    return {
      'stars': hub.stars,
      'isPrivate': hub.isPrivate,
      'readPermissionUserIds': hub.readPermissionUserIds,
      'writePermissionUserIds': hub.writePermissionUserIds,
      'itens': itens,
      'folders': folders,
    };
  }
}
