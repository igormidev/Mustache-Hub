// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_user_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarUserCollectionMainCollection on Isar {
  IsarCollection<IsarUserCollectionMain> get isarUserCollectionMains =>
      this.collection();
}

const IsarUserCollectionMainSchema = CollectionSchema(
  name: r'IsarUserCollectionMain',
  id: 4896192133308135002,
  properties: {
    r'folders': PropertySchema(
      id: 0,
      name: r'folders',
      type: IsarType.objectList,
      target: r'IsarUserCollection',
    ),
    r'itens': PropertySchema(
      id: 1,
      name: r'itens',
      type: IsarType.objectList,
      target: r'IsarMustachePackageInfo',
    ),
    r'updateId': PropertySchema(
      id: 2,
      name: r'updateId',
      type: IsarType.string,
    )
  },
  estimateSize: _isarUserCollectionMainEstimateSize,
  serialize: _isarUserCollectionMainSerialize,
  deserialize: _isarUserCollectionMainDeserialize,
  deserializeProp: _isarUserCollectionMainDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'IsarMustachePackageInfo': IsarMustachePackageInfoSchema,
    r'IsarUserCollection': IsarUserCollectionSchema
  },
  getId: _isarUserCollectionMainGetId,
  getLinks: _isarUserCollectionMainGetLinks,
  attach: _isarUserCollectionMainAttach,
  version: '3.1.0',
);

int _isarUserCollectionMainEstimateSize(
  IsarUserCollectionMain object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.folders.length * 3;
  {
    final offsets = allOffsets[IsarUserCollection]!;
    for (var i = 0; i < object.folders.length; i++) {
      final value = object.folders[i];
      bytesCount +=
          IsarUserCollectionSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.itens.length * 3;
  {
    final offsets = allOffsets[IsarMustachePackageInfo]!;
    for (var i = 0; i < object.itens.length; i++) {
      final value = object.itens[i];
      bytesCount += IsarMustachePackageInfoSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.updateId.length * 3;
  return bytesCount;
}

void _isarUserCollectionMainSerialize(
  IsarUserCollectionMain object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<IsarUserCollection>(
    offsets[0],
    allOffsets,
    IsarUserCollectionSchema.serialize,
    object.folders,
  );
  writer.writeObjectList<IsarMustachePackageInfo>(
    offsets[1],
    allOffsets,
    IsarMustachePackageInfoSchema.serialize,
    object.itens,
  );
  writer.writeString(offsets[2], object.updateId);
}

IsarUserCollectionMain _isarUserCollectionMainDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarUserCollectionMain();
  object.folders = reader.readObjectList<IsarUserCollection>(
        offsets[0],
        IsarUserCollectionSchema.deserialize,
        allOffsets,
        IsarUserCollection(),
      ) ??
      [];
  object.id = id;
  object.itens = reader.readObjectList<IsarMustachePackageInfo>(
        offsets[1],
        IsarMustachePackageInfoSchema.deserialize,
        allOffsets,
        IsarMustachePackageInfo(),
      ) ??
      [];
  object.updateId = reader.readString(offsets[2]);
  return object;
}

P _isarUserCollectionMainDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<IsarUserCollection>(
            offset,
            IsarUserCollectionSchema.deserialize,
            allOffsets,
            IsarUserCollection(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectList<IsarMustachePackageInfo>(
            offset,
            IsarMustachePackageInfoSchema.deserialize,
            allOffsets,
            IsarMustachePackageInfo(),
          ) ??
          []) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarUserCollectionMainGetId(IsarUserCollectionMain object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarUserCollectionMainGetLinks(
    IsarUserCollectionMain object) {
  return [];
}

void _isarUserCollectionMainAttach(
    IsarCollection<dynamic> col, Id id, IsarUserCollectionMain object) {
  object.id = id;
}

extension IsarUserCollectionMainQueryWhereSort
    on QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QWhere> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarUserCollectionMainQueryWhere on QueryBuilder<
    IsarUserCollectionMain, IsarUserCollectionMain, QWhereClause> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarUserCollectionMainQueryFilter on QueryBuilder<
    IsarUserCollectionMain, IsarUserCollectionMain, QFilterCondition> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> itensLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> itensIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> itensIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> itensLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> itensLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> itensLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
          QAfterFilterCondition>
      updateIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
          QAfterFilterCondition>
      updateIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updateId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> updateIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updateId',
        value: '',
      ));
    });
  }
}

extension IsarUserCollectionMainQueryObject on QueryBuilder<
    IsarUserCollectionMain, IsarUserCollectionMain, QFilterCondition> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
      QAfterFilterCondition> foldersElement(FilterQuery<IsarUserCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'folders');
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain,
          QAfterFilterCondition>
      itensElement(FilterQuery<IsarMustachePackageInfo> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'itens');
    });
  }
}

extension IsarUserCollectionMainQueryLinks on QueryBuilder<
    IsarUserCollectionMain, IsarUserCollectionMain, QFilterCondition> {}

extension IsarUserCollectionMainQuerySortBy
    on QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QSortBy> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterSortBy>
      sortByUpdateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateId', Sort.asc);
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterSortBy>
      sortByUpdateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateId', Sort.desc);
    });
  }
}

extension IsarUserCollectionMainQuerySortThenBy on QueryBuilder<
    IsarUserCollectionMain, IsarUserCollectionMain, QSortThenBy> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterSortBy>
      thenByUpdateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateId', Sort.asc);
    });
  }

  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QAfterSortBy>
      thenByUpdateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateId', Sort.desc);
    });
  }
}

extension IsarUserCollectionMainQueryWhereDistinct
    on QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QDistinct> {
  QueryBuilder<IsarUserCollectionMain, IsarUserCollectionMain, QDistinct>
      distinctByUpdateId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateId', caseSensitive: caseSensitive);
    });
  }
}

extension IsarUserCollectionMainQueryProperty on QueryBuilder<
    IsarUserCollectionMain, IsarUserCollectionMain, QQueryProperty> {
  QueryBuilder<IsarUserCollectionMain, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarUserCollectionMain, List<IsarUserCollection>,
      QQueryOperations> foldersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'folders');
    });
  }

  QueryBuilder<IsarUserCollectionMain, List<IsarMustachePackageInfo>,
      QQueryOperations> itensProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itens');
    });
  }

  QueryBuilder<IsarUserCollectionMain, String, QQueryOperations>
      updateIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateId');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarUserCollectionSchema = Schema(
  name: r'IsarUserCollection',
  id: -1439899406873463648,
  properties: {
    r'folders': PropertySchema(
      id: 0,
      name: r'folders',
      type: IsarType.objectList,
      target: r'IsarUserCollection',
    ),
    r'itens': PropertySchema(
      id: 1,
      name: r'itens',
      type: IsarType.objectList,
      target: r'IsarMustachePackageInfo',
    )
  },
  estimateSize: _isarUserCollectionEstimateSize,
  serialize: _isarUserCollectionSerialize,
  deserialize: _isarUserCollectionDeserialize,
  deserializeProp: _isarUserCollectionDeserializeProp,
);

int _isarUserCollectionEstimateSize(
  IsarUserCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.folders.length * 3;
  {
    final offsets = allOffsets[IsarUserCollection]!;
    for (var i = 0; i < object.folders.length; i++) {
      final value = object.folders[i];
      bytesCount +=
          IsarUserCollectionSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.itens.length * 3;
  {
    final offsets = allOffsets[IsarMustachePackageInfo]!;
    for (var i = 0; i < object.itens.length; i++) {
      final value = object.itens[i];
      bytesCount += IsarMustachePackageInfoSchema.estimateSize(
          value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarUserCollectionSerialize(
  IsarUserCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<IsarUserCollection>(
    offsets[0],
    allOffsets,
    IsarUserCollectionSchema.serialize,
    object.folders,
  );
  writer.writeObjectList<IsarMustachePackageInfo>(
    offsets[1],
    allOffsets,
    IsarMustachePackageInfoSchema.serialize,
    object.itens,
  );
}

IsarUserCollection _isarUserCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarUserCollection();
  object.folders = reader.readObjectList<IsarUserCollection>(
        offsets[0],
        IsarUserCollectionSchema.deserialize,
        allOffsets,
        IsarUserCollection(),
      ) ??
      [];
  object.itens = reader.readObjectList<IsarMustachePackageInfo>(
        offsets[1],
        IsarMustachePackageInfoSchema.deserialize,
        allOffsets,
        IsarMustachePackageInfo(),
      ) ??
      [];
  return object;
}

P _isarUserCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<IsarUserCollection>(
            offset,
            IsarUserCollectionSchema.deserialize,
            allOffsets,
            IsarUserCollection(),
          ) ??
          []) as P;
    case 1:
      return (reader.readObjectList<IsarMustachePackageInfo>(
            offset,
            IsarMustachePackageInfoSchema.deserialize,
            allOffsets,
            IsarMustachePackageInfo(),
          ) ??
          []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarUserCollectionQueryFilter
    on QueryBuilder<IsarUserCollection, IsarUserCollection, QFilterCondition> {
  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'folders',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'itens',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension IsarUserCollectionQueryObject
    on QueryBuilder<IsarUserCollection, IsarUserCollection, QFilterCondition> {
  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      foldersElement(FilterQuery<IsarUserCollection> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'folders');
    });
  }

  QueryBuilder<IsarUserCollection, IsarUserCollection, QAfterFilterCondition>
      itensElement(FilterQuery<IsarMustachePackageInfo> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'itens');
    });
  }
}
