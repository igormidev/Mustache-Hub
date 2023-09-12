import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/entities/template/template.dart';
import 'package:collection_conductor/src/domain/repositories/i_packages_repository.dart';

class AddMustacheTemplateUsecase {
  final IPackagesRepository packageRepo;
  const AddMustacheTemplateUsecase({
    required this.packageRepo,
  });

  AsyncAnswer<void> asd({
    required String packageId,
    required Template template,
  }) async {
    return await packageRepo.addTemplate(
      packageId: packageId,
      template: template,
    );
  }
}
