// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection_conductor/src/domain/entities/collection/hub_collection.dart';
import 'package:collection_conductor/src/domain/entities/collection/user_collection.dart';
import 'package:collection_conductor/src/domain/repositories/i_packages_repository.dart';

import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';

class CreatePackageUsecase {
  final IPackagesRepository packageRepo;
  const CreatePackageUsecase({
    required this.packageRepo,
  });

  AsyncAnswer<void> call({
    required String userId,
    required String packageId,
    required Template template,
    required UserCollection newUserCollection,
    required HubCollection newHubCollection,
  }) async {
    return packageRepo.createTemplateInHub(
      userId: userId,
      packageId: packageId,
      template: template,
      newUserCollection: newUserCollection,
      newHubCollection: newHubCollection,
    );
  }
}
