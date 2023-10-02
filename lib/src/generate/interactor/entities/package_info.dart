// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class PackageInfo {
  final bool isPrivate;
  final String ownerId;
  final List<String> readPermissionIds;
  final List<String> availibleVersions;
  const PackageInfo({
    required this.isPrivate,
    required this.ownerId,
    required this.readPermissionIds,
    required this.availibleVersions,
  });

  PackageInfo copyWith({
    bool? isPublic,
    String? ownerId,
    List<String>? readPermissionIds,
    List<String>? availibleVersions,
  }) {
    return PackageInfo(
      isPrivate: isPublic ?? isPrivate,
      ownerId: ownerId ?? this.ownerId,
      readPermissionIds: readPermissionIds ?? this.readPermissionIds,
      availibleVersions: availibleVersions ?? this.availibleVersions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPublic': isPrivate,
      'ownerId': ownerId,
      'readPermissionIds': readPermissionIds,
      'availibleVersions': availibleVersions,
    };
  }

  factory PackageInfo.fromMap(Map<String, dynamic> map) {
    return PackageInfo(
      isPrivate: map['isPublic'] as bool,
      ownerId: map['ownerId'] as String,
      readPermissionIds:
          List<String>.from((map['readPermissionIds'] as List<String>)),
      availibleVersions:
          List<String>.from((map['availibleVersions'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory PackageInfo.fromJson(String source) =>
      PackageInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PackageInfo(isPublic: $isPrivate, ownerId: $ownerId, readPermissionIds: $readPermissionIds, availibleVersions: $availibleVersions)';
  }

  @override
  bool operator ==(covariant PackageInfo other) {
    if (identical(this, other)) return true;

    return other.isPrivate == isPrivate &&
        other.ownerId == ownerId &&
        listEquals(other.readPermissionIds, readPermissionIds) &&
        listEquals(other.availibleVersions, availibleVersions);
  }

  @override
  int get hashCode {
    return isPrivate.hashCode ^
        ownerId.hashCode ^
        readPermissionIds.hashCode ^
        availibleVersions.hashCode;
  }
}
