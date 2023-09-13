import 'package:collection_conductor/src/data/adapters/package/mustache_package_info_adapter.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';

class UserCollectionAdapter {
  final MustachePackageInfoAdapter mustacheAdapter;
  const UserCollectionAdapter({
    required this.mustacheAdapter,
  });

  UserCollection fromMap(Map map) {
    final itens = (map['itens'] as List<dynamic>).cast<Map>().map((map) {
      return mustacheAdapter.fromMap(map);
    }).toList();
    final folders = (map['folders'] as List<dynamic>).cast<Map>().map((map) {
      return fromMap(map);
    }).toList();

    return UserCollection(
      itens: itens,
      folders: folders,
    );
  }

  Map<String, dynamic> toMap(UserCollection hub) {
    final folders = hub.folders.map((hub) {
      return toMap(hub);
    }).toList();
    final itens = hub.itens.map((info) {
      return mustacheAdapter.toMap(info);
    }).toList();
    return {
      'itens': itens,
      'folders': folders,
    };
  }
}
