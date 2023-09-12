// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:isar/isar.dart';

part 'isar_mustache_package_info.g.dart';

@embedded
class IsarMustachePackageInfo {
  late String packageId;
  late String name;
  late int stars;
  late bool isPrivate;
  late List<double> availibleVersions;
  late List<String> readPermissionUserIds;
  late List<String> writePermissionUserIds;

  IsarMustachePackageInfo();

  IsarMustachePackageInfo.build({
    required this.packageId,
    required this.name,
    required this.availibleVersions,
    required this.stars,
    required this.isPrivate,
    required this.readPermissionUserIds,
    required this.writePermissionUserIds,
  });
}
