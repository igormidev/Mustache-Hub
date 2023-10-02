import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/generate/interactor/states/current_package_state.dart';
import 'package:mustachehub/src/generate/interactor/repositories/i_package_repository.dart';

class CurrentPackageCubit extends Cubit<CurrentPackageState> {
  final IPackageRepository _repository;

  CurrentPackageCubit({
    required IPackageRepository repository,
  })  : _repository = repository,
        super(CurrentPackageState.none());

  Future<void> getPackage({
    required String packageId,
    required String packageVersion,
  }) async {
    emit(CurrentPackageState.loading());

    final response = await _repository.obtainPackage(
      packageId: packageId,
      packageVersion: packageVersion,
    );

    emit(response);
  }
}
