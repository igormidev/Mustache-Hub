// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/data/adapters/package/template_adapter.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';
import 'package:collection_conductor/src/domain/repositories/i_packages_repository.dart';
import 'package:collection_conductor/src/external/core/isar_service.dart';
import 'package:collection_conductor/src/external/core/storage_failure.dart';
import 'package:result_dart/result_dart.dart';

class ImplPackagesRepository implements IPackagesRepository {
  final IsarService storageService;
  final FirebaseFirestore firestore;
  final TemplateAdapter templateAdapter;

  const ImplPackagesRepository({
    required this.storageService,
    required this.firestore,
    required this.templateAdapter,
  });

  @override
  AsyncAnswer<VoidSucess> addTemplate({
    required String packageId,
    required Template template,
  }) async {
    final mapTemplate = templateAdapter.toMap(template);
    await firestore.collection('packages/$packageId/history').add(
          mapTemplate,
        );

    await firestore.waitForPendingWrites();
    return const VoidSucess().toSuccess();
  }

  @override
  AsyncAnswer<VoidSucess> createTemplateInHub({
    required Template template,
  }) async {
    final mapTemplate = templateAdapter.toMap(template);

    final ref = await firestore.collection('packages').add({});
    await firestore.collection('packages/${ref.id}/history').add(
          mapTemplate,
        );

    await firestore.waitForPendingWrites();

    return const VoidSucess().toSuccess();
  }

  @override
  AsyncAnswer<Template> getTemplateFromHub({
    required String packageId,
    required double version,
  }) async {
    final ref = await firestore
        .collection('packages/$packageId/history')
        .where(
          'version',
          isEqualTo: version,
        )
        .get();

    if (ref.docs.length != 1) {
      return const NoObjectInStorage(
        address: 'hubcollection',
      ).toFailure();
    }

    final map = ref.docs.first;

    return templateAdapter
        .fromMap(
          map.id,
          map.data(),
        )
        .toSuccess();
  }

  @override
  AsyncAnswer<Template> restoreTemplate({
    required String packageId,
    required double version,
  }) {
    return storageService.restoreTemplate(
      packageId: packageId,
      version: version,
    );
  }

  @override
  AsyncAnswer<VoidSucess> storeTemplateData({
    required String packageId,
    required Template data,
  }) {
    return storageService.storeTemplateData(packageId: packageId, data: data);
  }
}
