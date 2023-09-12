import 'package:collection_conductor/src/domain/entities/mustache_repository.dart';

class MustachePackageInfo extends MustacheRepository {
  final String packageId;
  final String name;
  final List<double> availibleVersions;

  const MustachePackageInfo({
    required this.name,
    required this.packageId,
    required this.availibleVersions,
    required super.stars,
    required super.isPrivate,
    required super.readPermissionUserIds,
    required super.writePermissionUserIds,
  });
}
