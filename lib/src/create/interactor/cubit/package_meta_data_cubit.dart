import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/create/interactor/state/package_meta_data_state.dart';

class PackageMetaDataCubit extends Cubit<PackageMetaDataState> {
  PackageMetaDataCubit() : super(PackageMetaDataState.newPackage());

  void setPackageId(String packageId, String version) {
    emit(PackageMetaDataState.loadingPackageId(packageId: packageId));

    emit(PackageMetaDataState.withData(packageId: packageId));
  }

  void setPackageIdToNew() {}
}
