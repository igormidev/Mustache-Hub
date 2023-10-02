import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustachehub/core/helpers/local_source.dart';
import 'package:mustachehub/src/create/interactor/repositories/i_package_form_repository.dart';
import 'package:mustachehub/src/create/interactor/state/package_form_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/template.dart';

class ImplPackageFormRepository implements IPackageFormRepository {
  final FirebaseFirestore _firestore;
  final ILocalSource _local;

  ImplPackageFormRepository({
    FirebaseFirestore? firestore,
    required ILocalSource local,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _local = local;

  @override
  Future<PackageFormState> createPackage({
    required PackageInfo packageInfo,
    required Template template,
  }) async {
    final packRef = _firestore.collection('packages').doc();
    final histRef = _firestore.collection('packages/${packRef.id}/history').doc(
          template.versionName,
        );

    return _setPackage(
      packRef: packRef,
      histRef: histRef,
      packageInfo: packageInfo,
      template: template,
    );
  }

  @override
  Future<PackageFormState> updatePackage({
    required String packageId,
    required PackageInfo packageInfo,
    required Template template,
  }) {
    final packRef = _firestore.collection('packages').doc(packageId);
    final histRef = _firestore.collection('packages/$packageId/history').doc(
          template.versionName,
        );

    return _setPackage(
      packRef: packRef,
      histRef: histRef,
      packageInfo: packageInfo,
      template: template,
    );
  }

  Future<PackageFormState> _setPackage({
    required DocumentReference<Map<String, dynamic>> packRef,
    required DocumentReference<Map<String, dynamic>> histRef,
    required PackageInfo packageInfo,
    required Template template,
  }) async {
    try {
      await _firestore.runTransaction((Transaction transaction) async {
        transaction //
            .set(packRef, packageInfo.toMap())
            .set(histRef, template.toMap());
      });
      try {
        await _local.addMapToRoute(
          baseRoute: 'packages/${packRef.id}/history',
          address: template.versionName,
          map: template.toMap(),
        );
      } catch (_) {
        return PackageFormState.sucess();
      }
      return PackageFormState.sucess();
    } catch (_) {
      return PackageFormState.failure();
    }
  }
}
