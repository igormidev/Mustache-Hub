import 'package:mustachehub/src/generate/interactor/states/current_package_state.dart';

abstract class IPackageRepository {
  Future<CurrentPackageState> obtainPackage({
    required String packageId,
    required String packageVersion,
  });
}
