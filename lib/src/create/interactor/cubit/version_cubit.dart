import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/src/create/interactor/state/version_state.dart';

class VersionCubit extends Cubit<VersionState> {
  VersionCubit()
      : super(VersionState(
          latestVersion: const PackageVersion.initial(),
          newVersion: const PackageVersion.initial(),
        ));

  void incrementMajorVersion() {
    emit(state.copyWith(
      newVersion: PackageVersion(
        majorVersion: state.latestVersion.majorVersion + 1,
        minorVersion: 0,
        patchVersion: 0,
      ),
    ));
  }

  void incrementMinorVersion() {
    emit(state.copyWith(
      newVersion: PackageVersion(
        majorVersion: 0,
        minorVersion: state.latestVersion.minorVersion + 1,
        patchVersion: 0,
      ),
    ));
  }

  void incrementPatchVersion() {
    emit(state.copyWith(
      newVersion: PackageVersion(
        majorVersion: 0,
        minorVersion: 0,
        patchVersion: state.latestVersion.patchVersion + 1,
      ),
    ));
  }
}
