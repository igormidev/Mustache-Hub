import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustachehub/core/helpers/local_source.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/template.dart';
import 'package:mustachehub/src/generate/interactor/repositories/i_package_repository.dart';
import 'package:mustachehub/src/generate/interactor/states/current_package_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';

class ImplPackageRepository implements IPackageRepository {
  final FirebaseFirestore _firestore;
  final ILocalSource _local;

  ImplPackageRepository({
    FirebaseFirestore? firestore,
    required ILocalSource local,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _local = local;

  @override
  Future<CurrentPackageState> obtainPackage({
    required String packageId,
    required String packageVersion,
  }) async {
    PackageInfo packageInfo;
    Map<String, dynamic>? packageMap;

    try {
      packageMap = await _local.getMapFromRoute(
        baseRoute: 'packages',
        address: packageId,
      );
    } catch (_) {
      try {
        final response = await _firestore //
            .collection('packages')
            .doc(packageId)
            .get();

        packageMap = response.data();
      } catch (_) {
        return CurrentPackageState.withError();
      }
    }

    try {
      if (packageMap == null) {
        return CurrentPackageState.withError();
      }
      packageInfo = PackageInfo.fromMap(packageMap);
    } catch (_) {
      return CurrentPackageState.withError();
    }

    Template template;
    Map<String, dynamic>? templateMap;

    try {
      templateMap = await _local.getMapFromRoute(
        baseRoute: 'packages/$packageId/history',
        address: packageVersion,
      );
    } catch (_) {
      try {
        final response = await _firestore
            .collection('packages/$packageId/history')
            .doc(packageVersion)
            .get();

        templateMap = response.data();
      } catch (_) {
        return CurrentPackageState.withError();
      }
    }

    try {
      if (templateMap == null) {
        return CurrentPackageState.withError();
      }
      template = Template.fromMap(templateMap);
    } catch (_) {
      return CurrentPackageState.withError();
    }

    return CurrentPackageState.withData(
      info: packageInfo,
      template: template,
    );
  }
}
