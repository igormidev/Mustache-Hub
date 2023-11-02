// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'version_state.freezed.dart';

@freezed
abstract class VersionState with _$VersionState {
  factory VersionState({
    required PackageVersion latestVersion,
    required PackageVersion newVersion,
  }) = _VersionState;
}

class PackageVersion {
  final int majorVersion;
  final int minorVersion;
  final int patchVersion;

  const PackageVersion({
    required this.majorVersion,
    required this.minorVersion,
    required this.patchVersion,
  });

  const PackageVersion.initial()
      : this(majorVersion: 1, minorVersion: 0, patchVersion: 0);
}
