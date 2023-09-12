// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection_conductor/src/domain/entities/package/mustache_package_info.dart';

abstract class ICollectionInfo<T extends ICollectionInfo<T>> {
  final List<MustachePackageInfo> itens;
  final List<T> folders;

  const ICollectionInfo({
    required this.itens,
    required this.folders,
  });
}
