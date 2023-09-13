// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection_conductor/src/domain/repositories/i_packages_repository.dart';

import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';

class CreateMustacheTemplateUsecase {
  final IPackagesRepository packageRepo;
  const CreateMustacheTemplateUsecase({
    required this.packageRepo,
  });

  AsyncAnswer<void> call({
    required Template template,
  }) {
    return packageRepo.createTemplateInHub(
      template: template,
    );
  }
}
