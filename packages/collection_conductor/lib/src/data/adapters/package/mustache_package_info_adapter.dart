import 'package:collection_conductor/src/domain/entities/package/mustache_package_info.dart';

class MustachePackageInfoAdapter {
  MustachePackageInfo fromMap(Map map) {
    final readPermissionUserIds =
        (map['readPermissionUserIds'] as List<dynamic>).cast<String>();
    final writePermissionUserIds =
        (map['writePermissionUserIds'] as List<dynamic>).cast<String>();

    return MustachePackageInfo(
      isPrivate: map['isPrivate'] as bool,
      stars: map['stars'] as int,
      readPermissionUserIds: readPermissionUserIds,
      writePermissionUserIds: writePermissionUserIds,
      packageId: map['packageId'] as String,
      name: map['name'] as String,
      availibleVersions: List<double>.from(
        (map['availibleVersions'] as List<double>),
      ),
    );
  }

  Map<String, dynamic> toMap(MustachePackageInfo info) {
    return <String, dynamic>{
      'packageId': info.packageId,
      'name': info.name,
      'availibleVersions': info.availibleVersions,
      'isPrivate': info.isPrivate,
      'stars': info.stars,
      'readPermissionUserIds': info.readPermissionUserIds,
      'writePermissionUserIds': info.writePermissionUserIds,
    };
  }
}
