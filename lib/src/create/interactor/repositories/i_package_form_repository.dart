import 'package:mustachehub/src/create/interactor/state/package_form_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/template.dart';

abstract class IPackageFormRepository {
  Future<PackageFormState> createPackage({
    required PackageInfo packageInfo,
    required Template template,
  });

  Future<PackageFormState> updatePackage({
    required String packageId,
    required PackageInfo packageInfo,
    required Template template,
  });
}
