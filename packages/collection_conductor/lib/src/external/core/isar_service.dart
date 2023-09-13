import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';
import 'package:collection_conductor/src/external/adapters/user_collection_adapter.dart';
import 'package:collection_conductor/src/external/adapters/user_package_adapter.dart';
import 'package:collection_conductor/src/external/core/storage_failure.dart';
import 'package:collection_conductor/src/external/externals/collections/isar_user_collection.dart';
import 'package:collection_conductor/src/external/externals/templates/isar_template.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:result_dart/result_dart.dart';

class IsarService {
  late final Isar isar;
  final IsarUserPackageAdapter packageAdapter;
  final IsarUserCollectionAdapter collectionAdapter;

  IsarService({
    required this.packageAdapter,
    required this.collectionAdapter,
  });

  Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();

    isar = await Isar.open(
      [IsarTemplateSchema, IsarUserCollectionMainSchema],
      directory: dir.path,
    );
    isar.isarTemplates.filter().packageIdEqualTo('');
    isar.isarUserCollectionMains.filter();
  }

  AsyncAnswer<Template> restoreTemplate({
    required String packageId,
    required double version,
  }) async {
    final IsarTemplate? isarTemplate = await isar.isarTemplates
        .where()
        .filter()
        .packageIdEqualTo(packageId)
        .and()
        .versionEqualTo(version)
        .findFirst();

    if (isarTemplate == null) {
      return const NoObjectInStorage(
        address: 'isarTemplates',
      ).toFailure();
    }

    return packageAdapter.templateFromIsar(isarTemplate).toSuccess();
  }

  AsyncAnswer<VoidSucess> storeTemplateData({
    required String packageId,
    required Template data,
  }) async {
    final IsarTemplate isarTemplate = packageAdapter.templateToIsar(
      packageId,
      data,
    );

    await isar.writeTxn(() async {
      await isar.isarTemplates.put(isarTemplate);
    });

    return const VoidSucess().toSuccess();
  }

  AsyncAnswer<UserCollection> restoreUserCollection({
    required String updateId,
  }) async {
    final userColl = await isar.isarUserCollectionMains.where().findFirst();

    if (userColl == null) {
      return const NoObjectInStorage(
        address: 'isarUserCollection',
      ).toFailure();
    }

    return UserCollection(
      folders: collectionAdapter.collectionFromIsarList(userColl.folders),
      itens: collectionAdapter.packageFromIsarList(userColl.itens),
    ).toSuccess();
  }

  AsyncAnswer<VoidSucess> storeUserCollection({
    required UserCollection data,
  }) async {
    return await isar.writeTxn(() async {
      final userColl = await isar.isarUserCollectionMains.where().findFirst();
      if (userColl == null) {
        return const NoObjectInStorage(
          address: 'isarUserCollectionMain',
        ).toFailure();
      }

      final userCollection = IsarUserCollectionMain.build(
        id: userColl.id,
        itens: collectionAdapter.packageToIsarList(data.itens),
        folders: collectionAdapter.collectionToIsarList(data.folders),
      );

      userCollection.id = userColl.id;

      await isar.isarUserCollectionMains.put(userCollection);

      return const VoidSucess().toSuccess();
    });
  }
}
