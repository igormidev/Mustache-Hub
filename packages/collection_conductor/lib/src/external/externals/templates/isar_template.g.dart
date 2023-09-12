// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_template.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarTemplateCollection on Isar {
  IsarCollection<IsarTemplate> get isarTemplates => this.collection();
}

const IsarTemplateSchema = CollectionSchema(
  name: r'IsarTemplate',
  id: 822758683129595971,
  properties: {
    r'booleanPipes': PropertySchema(
      id: 0,
      name: r'booleanPipes',
      type: IsarType.objectList,
      target: r'IsarBooleanPipe',
    ),
    r'content': PropertySchema(
      id: 1,
      name: r'content',
      type: IsarType.string,
    ),
    r'description': PropertySchema(
      id: 2,
      name: r'description',
      type: IsarType.string,
    ),
    r'modelPipes': PropertySchema(
      id: 3,
      name: r'modelPipes',
      type: IsarType.objectList,
      target: r'IsarModelPipe',
    ),
    r'packageId': PropertySchema(
      id: 4,
      name: r'packageId',
      type: IsarType.string,
    ),
    r'templateId': PropertySchema(
      id: 5,
      name: r'templateId',
      type: IsarType.string,
    ),
    r'textPipes': PropertySchema(
      id: 6,
      name: r'textPipes',
      type: IsarType.objectList,
      target: r'IsarTextPipe',
    ),
    r'version': PropertySchema(
      id: 7,
      name: r'version',
      type: IsarType.double,
    )
  },
  estimateSize: _isarTemplateEstimateSize,
  serialize: _isarTemplateSerialize,
  deserialize: _isarTemplateDeserialize,
  deserializeProp: _isarTemplateDeserializeProp,
  idName: r'id',
  indexes: {
    r'packageId': IndexSchema(
      id: -6057482687381368049,
      name: r'packageId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'packageId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'IsarTextPipe': IsarTextPipeSchema,
    r'IsarBooleanPipe': IsarBooleanPipeSchema,
    r'IsarModelPipe': IsarModelPipeSchema
  },
  getId: _isarTemplateGetId,
  getLinks: _isarTemplateGetLinks,
  attach: _isarTemplateAttach,
  version: '3.1.0',
);

int _isarTemplateEstimateSize(
  IsarTemplate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.booleanPipes.length * 3;
  {
    final offsets = allOffsets[IsarBooleanPipe]!;
    for (var i = 0; i < object.booleanPipes.length; i++) {
      final value = object.booleanPipes[i];
      bytesCount +=
          IsarBooleanPipeSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.modelPipes.length * 3;
  {
    final offsets = allOffsets[IsarModelPipe]!;
    for (var i = 0; i < object.modelPipes.length; i++) {
      final value = object.modelPipes[i];
      bytesCount +=
          IsarModelPipeSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.packageId.length * 3;
  bytesCount += 3 + object.templateId.length * 3;
  bytesCount += 3 + object.textPipes.length * 3;
  {
    final offsets = allOffsets[IsarTextPipe]!;
    for (var i = 0; i < object.textPipes.length; i++) {
      final value = object.textPipes[i];
      bytesCount += IsarTextPipeSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  return bytesCount;
}

void _isarTemplateSerialize(
  IsarTemplate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<IsarBooleanPipe>(
    offsets[0],
    allOffsets,
    IsarBooleanPipeSchema.serialize,
    object.booleanPipes,
  );
  writer.writeString(offsets[1], object.content);
  writer.writeString(offsets[2], object.description);
  writer.writeObjectList<IsarModelPipe>(
    offsets[3],
    allOffsets,
    IsarModelPipeSchema.serialize,
    object.modelPipes,
  );
  writer.writeString(offsets[4], object.packageId);
  writer.writeString(offsets[5], object.templateId);
  writer.writeObjectList<IsarTextPipe>(
    offsets[6],
    allOffsets,
    IsarTextPipeSchema.serialize,
    object.textPipes,
  );
  writer.writeDouble(offsets[7], object.version);
}

IsarTemplate _isarTemplateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarTemplate();
  object.booleanPipes = reader.readObjectList<IsarBooleanPipe>(
        offsets[0],
        IsarBooleanPipeSchema.deserialize,
        allOffsets,
        IsarBooleanPipe(),
      ) ??
      [];
  object.content = reader.readString(offsets[1]);
  object.description = reader.readString(offsets[2]);
  object.id = id;
  object.modelPipes = reader.readObjectList<IsarModelPipe>(
        offsets[3],
        IsarModelPipeSchema.deserialize,
        allOffsets,
        IsarModelPipe(),
      ) ??
      [];
  object.packageId = reader.readString(offsets[4]);
  object.templateId = reader.readString(offsets[5]);
  object.textPipes = reader.readObjectList<IsarTextPipe>(
        offsets[6],
        IsarTextPipeSchema.deserialize,
        allOffsets,
        IsarTextPipe(),
      ) ??
      [];
  object.version = reader.readDouble(offsets[7]);
  return object;
}

P _isarTemplateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<IsarBooleanPipe>(
            offset,
            IsarBooleanPipeSchema.deserialize,
            allOffsets,
            IsarBooleanPipe(),
          ) ??
          []) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectList<IsarModelPipe>(
            offset,
            IsarModelPipeSchema.deserialize,
            allOffsets,
            IsarModelPipe(),
          ) ??
          []) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readObjectList<IsarTextPipe>(
            offset,
            IsarTextPipeSchema.deserialize,
            allOffsets,
            IsarTextPipe(),
          ) ??
          []) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarTemplateGetId(IsarTemplate object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarTemplateGetLinks(IsarTemplate object) {
  return [];
}

void _isarTemplateAttach(
    IsarCollection<dynamic> col, Id id, IsarTemplate object) {
  object.id = id;
}

extension IsarTemplateQueryWhereSort
    on QueryBuilder<IsarTemplate, IsarTemplate, QWhere> {
  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarTemplateQueryWhere
    on QueryBuilder<IsarTemplate, IsarTemplate, QWhereClause> {
  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause> idBetween(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause> packageIdEqualTo(
      String packageId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'packageId',
        value: [packageId],
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterWhereClause>
      packageIdNotEqualTo(String packageId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'packageId',
              lower: [],
              upper: [packageId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'packageId',
              lower: [packageId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'packageId',
              lower: [packageId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'packageId',
              lower: [],
              upper: [packageId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarTemplateQueryFilter
    on QueryBuilder<IsarTemplate, IsarTemplate, QFilterCondition> {
  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'booleanPipes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'booleanPipes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'booleanPipes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'booleanPipes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'booleanPipes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'booleanPipes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modelPipes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modelPipes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modelPipes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modelPipes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modelPipes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modelPipes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdEqualTo(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdGreaterThan(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdLessThan(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdBetween(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdStartsWith(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdEndsWith(
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

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'packageId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'packageId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'packageId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      packageIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'packageId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'templateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'templateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'templateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'templateId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'templateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'templateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'templateId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'templateId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'templateId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      templateIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'templateId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'textPipes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'textPipes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'textPipes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'textPipes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'textPipes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'textPipes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      versionEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'version',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      versionGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'version',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      versionLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'version',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      versionBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'version',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension IsarTemplateQueryObject
    on QueryBuilder<IsarTemplate, IsarTemplate, QFilterCondition> {
  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      booleanPipesElement(FilterQuery<IsarBooleanPipe> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'booleanPipes');
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      modelPipesElement(FilterQuery<IsarModelPipe> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'modelPipes');
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterFilterCondition>
      textPipesElement(FilterQuery<IsarTextPipe> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'textPipes');
    });
  }
}

extension IsarTemplateQueryLinks
    on QueryBuilder<IsarTemplate, IsarTemplate, QFilterCondition> {}

extension IsarTemplateQuerySortBy
    on QueryBuilder<IsarTemplate, IsarTemplate, QSortBy> {
  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByPackageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageId', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByPackageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageId', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByTemplateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'templateId', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy>
      sortByTemplateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'templateId', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> sortByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension IsarTemplateQuerySortThenBy
    on QueryBuilder<IsarTemplate, IsarTemplate, QSortThenBy> {
  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByPackageId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageId', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByPackageIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'packageId', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByTemplateId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'templateId', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy>
      thenByTemplateIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'templateId', Sort.desc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.asc);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QAfterSortBy> thenByVersionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'version', Sort.desc);
    });
  }
}

extension IsarTemplateQueryWhereDistinct
    on QueryBuilder<IsarTemplate, IsarTemplate, QDistinct> {
  QueryBuilder<IsarTemplate, IsarTemplate, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QDistinct> distinctByPackageId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'packageId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QDistinct> distinctByTemplateId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'templateId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTemplate, IsarTemplate, QDistinct> distinctByVersion() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'version');
    });
  }
}

extension IsarTemplateQueryProperty
    on QueryBuilder<IsarTemplate, IsarTemplate, QQueryProperty> {
  QueryBuilder<IsarTemplate, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarTemplate, List<IsarBooleanPipe>, QQueryOperations>
      booleanPipesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'booleanPipes');
    });
  }

  QueryBuilder<IsarTemplate, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<IsarTemplate, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<IsarTemplate, List<IsarModelPipe>, QQueryOperations>
      modelPipesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modelPipes');
    });
  }

  QueryBuilder<IsarTemplate, String, QQueryOperations> packageIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'packageId');
    });
  }

  QueryBuilder<IsarTemplate, String, QQueryOperations> templateIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'templateId');
    });
  }

  QueryBuilder<IsarTemplate, List<IsarTextPipe>, QQueryOperations>
      textPipesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'textPipes');
    });
  }

  QueryBuilder<IsarTemplate, double, QQueryOperations> versionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'version');
    });
  }
}
