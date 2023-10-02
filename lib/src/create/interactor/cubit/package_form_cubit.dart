import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/create/interactor/repositories/i_package_form_repository.dart';
import 'package:mustachehub/src/create/interactor/state/package_form_state.dart';
import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/template.dart';

class PackageFormCubit extends Cubit<PackageFormState> {
  final IPackageFormRepository _repository;
  PackageFormCubit({required IPackageFormRepository repository})
      : _repository = repository,
        super(PackageFormState.normal());

  Future<void> createPackage({
    required PackageInfo packageInfo,
    required Template template,
  }) async {
    final response = await _repository.createPackage(
      packageInfo: packageInfo,
      template: template,
    );

    emit(response);
  }
}
