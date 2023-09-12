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
    required CreateMustacheParam param,
  }) {
    return packageRepo.updateTemplateFromHub(
      name: param.name,
      description: param.description,
      isPrivate: param.isPrivate,
      template: param.template,
    );
  }
}

class CreateMustacheParam {
  final String name;
  final String description;
  final bool isPrivate;
  final Template template;

  const CreateMustacheParam({
    required this.name,
    required this.description,
    required this.isPrivate,
    required this.template,
  });
}
