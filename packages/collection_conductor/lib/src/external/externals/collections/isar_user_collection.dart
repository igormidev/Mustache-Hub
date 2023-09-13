// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection_conductor/src/external/externals/package/isar_mustache_package_info.dart';
import 'package:isar/isar.dart';

part 'isar_user_collection.g.dart';

@Collection()
class IsarUserCollectionMain {
  Id id = Isar.autoIncrement;
  late List<IsarMustachePackageInfo> itens;
  late List<IsarUserCollection> folders;
  late String updateId;

  IsarUserCollectionMain();
  IsarUserCollectionMain.build({
    required this.id,
    required this.itens,
    required this.folders,
    required this.updateId,
  });
}

@embedded
class IsarUserCollection {
  late List<IsarMustachePackageInfo> itens;
  late List<IsarUserCollection> folders;

  IsarUserCollection();
  IsarUserCollection.build({
    required this.itens,
    required this.folders,
  });
}
