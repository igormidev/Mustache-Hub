// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_mustache_package_info.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarMustachePackageInfoSchema = Schema(
  name: r'IsarMustachePackageInfo',
  id: 2343168988228163173,
  properties: {
    r'availibleVersions': PropertySchema(
      id: 0,
      name: r'availibleVersions',
      type: IsarType.doubleList,
    ),
    r'isPrivate': PropertySchema(
      id: 1,
      name: r'isPrivate',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'packageId': PropertySchema(
      id: 3,
      name: r'packageId',
      type: IsarType.string,
    ),
    r'readPermissionUserIds': PropertySchema(
      id: 4,
      name: r'readPermissionUserIds',
      type: IsarType.stringList,
    ),
    r'stars': PropertySchema(
      id: 5,
      name: r'stars',
      type: IsarType.long,
    ),
    r'writePermissionUserIds': PropertySchema(
      id: 6,
      name: r'writePermissionUserIds',
      type: IsarType.stringList,
    )
  },
  estimateSize: _isarMustachePackageInfoEstimateSize,
  serialize: _isarMustachePackageInfoSerialize,
  deserialize: _isarMustachePackageInfoDeserialize,
  deserializeProp: _isarMustachePackageInfoDeserializeProp,
);

int _isarMustachePackageInfoEstimateSize(
  IsarMustachePackageInfo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.availibleVersions.length * 8;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.packageId.length * 3;
  bytesCount += 3 + object.readPermissionUserIds.length * 3;
  {
    for (var i = 0; i < object.readPermissionUserIds.length; i++) {
      final value = object.readPermissionUserIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.writePermissionUserIds.length * 3;
  {
    for (var i = 0; i < object.writePermissionUserIds.length; i++) {
      final value = object.writePermissionUserIds[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _isarMustachePackageInfoSerialize(
  IsarMustachePackageInfo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDoubleList(offsets[0], object.availibleVersions);
  writer.writeBool(offsets[1], object.isPrivate);
  writer.writeString(offsets[2], object.name);
  writer.writeString(offsets[3], object.packageId);
  writer.writeStringList(offsets[4], object.readPermissionUserIds);
  writer.writeLong(offsets[5], object.stars);
  writer.writeStringList(offsets[6], object.writePermissionUserIds);
}

IsarMustachePackageInfo _isarMustachePackageInfoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarMustachePackageInfo();
  object.availibleVersions = reader.readDoubleList(offsets[0]) ?? [];
  object.isPrivate = reader.readBool(offsets[1]);
  object.name = reader.readString(offsets[2]);
  object.packageId = reader.readString(offsets[3]);
  object.readPermissionUserIds = reader.readStringList(offsets[4]) ?? [];
  object.stars = reader.readLong(offsets[5]);
  object.writePermissionUserIds = reader.readStringList(offsets[6]) ?? [];
  return object;
}

P _isarMustachePackageInfoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleList(offset) ?? []) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarMustachePackageInfoQueryFilter on QueryBuilder<
    IsarMustachePackageInfo, IsarMustachePackageInfo, QFilterCondition> {
  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsElementEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'availibleVersions',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsElementGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'availibleVersions',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsElementLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'availibleVersions',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsElementBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'availibleVersions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'availibleVersions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'availibleVersions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'availibleVersions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'availibleVersions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'availibleVersions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> availibleVersionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'availibleVersions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> isPrivateEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPrivate',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'packageId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      packageIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      packageIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'packageId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> packageIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'packageId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readPermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readPermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readPermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readPermissionUserIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'readPermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'readPermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      readPermissionUserIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'readPermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      readPermissionUserIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'readPermissionUserIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readPermissionUserIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'readPermissionUserIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readPermissionUserIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readPermissionUserIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readPermissionUserIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readPermissionUserIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readPermissionUserIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> readPermissionUserIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'readPermissionUserIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> starsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stars',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> starsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stars',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> starsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stars',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> starsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stars',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'writePermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'writePermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'writePermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'writePermissionUserIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'writePermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'writePermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      writePermissionUserIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'writePermissionUserIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
          QAfterFilterCondition>
      writePermissionUserIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'writePermissionUserIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'writePermissionUserIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'writePermissionUserIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'writePermissionUserIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'writePermissionUserIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'writePermissionUserIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'writePermissionUserIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'writePermissionUserIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMustachePackageInfo, IsarMustachePackageInfo,
      QAfterFilterCondition> writePermissionUserIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'writePermissionUserIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IsarMustachePackageInfoQueryObject on QueryBuilder<
    IsarMustachePackageInfo, IsarMustachePackageInfo, QFilterCondition> {}
