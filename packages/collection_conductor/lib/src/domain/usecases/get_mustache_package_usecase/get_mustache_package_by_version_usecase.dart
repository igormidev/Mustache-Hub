import 'package:collection_conductor/src/core/utils/default_class.dart';
import 'package:collection_conductor/src/core/utils/type_defs.dart';
import 'package:collection_conductor/src/domain/repositories/i_packages_repository.dart';
import 'package:result_dart/result_dart.dart';

class GetMustachePackageByVersionUsecase {
  final IPackagesRepository packagesRepo;
  const GetMustachePackageByVersionUsecase({
    required this.packagesRepo,
  });

  AsyncAnswer<void> call({
    required String id,
    required double version,
  }) async {
    final cacheResponse = await packagesRepo.restoreTemplate(
      id,
      version,
    );

    return await cacheResponse.fold(
      (success) {
        return Success(VoidSucess());
      },
      (_) async {
        final hubResponse = await packagesRepo.getTemplateFromHub(
          id,
          version,
        );

        return hubResponse.onSuccess(
          (data) async {
            await packagesRepo.storeTemplateData(
              data: data,
            );
          },
        );
      },
    );
  }
}
