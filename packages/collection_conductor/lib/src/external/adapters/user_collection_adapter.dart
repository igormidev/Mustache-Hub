import 'package:collection_conductor/src/external/externals/package/isar_mustache_package_info.dart';
import 'package:collection_conductor/src/external/externals/collections/isar_user_collection.dart';
import 'package:collection_conductor/src/domain/entities/package/mustache_package_info.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';

class UserCollectionAdapter {
  List<IsarUserCollection> collectionToIsarList(
    List<UserCollection> collection,
  ) {
    return collection.map((UserCollection collection) {
      return IsarUserCollection.build(
        folders: collectionToIsarList(collection.folders),
        itens: packageToIsarList(collection.itens),
      );
    }).toList();
  }

  List<IsarMustachePackageInfo> packageToIsarList(
    List<MustachePackageInfo> packages,
  ) {
    return packages.map((
      MustachePackageInfo packageInfo,
    ) {
      return packageToIsarModel(packageInfo);
    }).toList();
  }

  IsarMustachePackageInfo packageToIsarModel(
    MustachePackageInfo packageInfo,
  ) {
    return IsarMustachePackageInfo.build(
      name: packageInfo.name,
      packageId: packageInfo.packageId,
      availibleVersions: packageInfo.availibleVersions,
      stars: packageInfo.stars,
      isPrivate: packageInfo.isPrivate,
      readPermissionUserIds: packageInfo.readPermissionUserIds,
      writePermissionUserIds: packageInfo.writePermissionUserIds,
    );
  }

  //

  List<UserCollection> collectionFromIsarList(
    List<IsarUserCollection> collection,
  ) {
    return collection.map((IsarUserCollection collection) {
      return UserCollection(
        folders: collectionFromIsarList(collection.folders),
        itens: packageFromIsarList(collection.itens),
      );
    }).toList();
  }

  List<MustachePackageInfo> packageFromIsarList(
    List<IsarMustachePackageInfo> packages,
  ) {
    return packages.map((
      IsarMustachePackageInfo packageInfo,
    ) {
      return packageFromIsarModel(packageInfo);
    }).toList();
  }

  MustachePackageInfo packageFromIsarModel(
    IsarMustachePackageInfo packageInfo,
  ) {
    return MustachePackageInfo(
      name: packageInfo.name,
      packageId: packageInfo.packageId,
      availibleVersions: packageInfo.availibleVersions,
      stars: packageInfo.stars,
      isPrivate: packageInfo.isPrivate,
      readPermissionUserIds: packageInfo.readPermissionUserIds,
      writePermissionUserIds: packageInfo.writePermissionUserIds,
    );
  }
}
