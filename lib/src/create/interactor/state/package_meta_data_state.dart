import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_meta_data_state.freezed.dart';

@freezed
abstract class PackageMetaDataState with _$PackageMetaDataState {
  factory PackageMetaDataState.loadingPackageId({
    required String packageId,
  }) = _LoadingPackageId;

  factory PackageMetaDataState.withData({
    required String packageId,
  }) = _WithData;

  factory PackageMetaDataState.newPackage() = _NewPackage;
}

extension PackageMetaDataStateExtension on PackageMetaDataState {
  bool get isEditing => this is _WithData || this is _LoadingPackageId;
}
