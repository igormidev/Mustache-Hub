import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/src/generate/interactor/entities/package_info.dart';
import 'package:mustachehub/src/generate/interactor/entities/template/template.dart';

part 'current_package_state.freezed.dart';

@freezed
abstract class CurrentPackageState with _$CurrentPackageState {
  factory CurrentPackageState.none() = CurrentPackageStateNone;
  factory CurrentPackageState.loading() = CurrentPackageStateLoading;
  factory CurrentPackageState.withError() = CurrentPackageStateWithError;

  factory CurrentPackageState.withData({
    required PackageInfo info,
    required Template template,
  }) = CurrentPackageStateWithData;
}
