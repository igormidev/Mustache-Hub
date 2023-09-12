// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_model_pipe.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarModelPipeSchema = Schema(
  name: r'IsarModelPipe',
  id: 4068583570230121604,
  properties: {
    r'booleanPipes': PropertySchema(
      id: 0,
      name: r'booleanPipes',
      type: IsarType.objectList,
      target: r'IsarBooleanPipe',
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'modelPipes': PropertySchema(
      id: 2,
      name: r'modelPipes',
      type: IsarType.objectList,
      target: r'IsarModelPipe',
    ),
    r'mustacheName': PropertySchema(
      id: 3,
      name: r'mustacheName',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 4,
      name: r'name',
      type: IsarType.string,
    ),
    r'pipeId': PropertySchema(
      id: 5,
      name: r'pipeId',
      type: IsarType.string,
    ),
    r'textPipes': PropertySchema(
      id: 6,
      name: r'textPipes',
      type: IsarType.objectList,
      target: r'IsarTextPipe',
    )
  },
  estimateSize: _isarModelPipeEstimateSize,
  serialize: _isarModelPipeSerialize,
  deserialize: _isarModelPipeDeserialize,
  deserializeProp: _isarModelPipeDeserializeProp,
);

int _isarModelPipeEstimateSize(
  IsarModelPipe object,
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
  bytesCount += 3 + object.mustacheName.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.pipeId.length * 3;
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

void _isarModelPipeSerialize(
  IsarModelPipe object,
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
  writer.writeString(offsets[1], object.description);
  writer.writeObjectList<IsarModelPipe>(
    offsets[2],
    allOffsets,
    IsarModelPipeSchema.serialize,
    object.modelPipes,
  );
  writer.writeString(offsets[3], object.mustacheName);
  writer.writeString(offsets[4], object.name);
  writer.writeString(offsets[5], object.pipeId);
  writer.writeObjectList<IsarTextPipe>(
    offsets[6],
    allOffsets,
    IsarTextPipeSchema.serialize,
    object.textPipes,
  );
}

IsarModelPipe _isarModelPipeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarModelPipe();
  object.booleanPipes = reader.readObjectList<IsarBooleanPipe>(
        offsets[0],
        IsarBooleanPipeSchema.deserialize,
        allOffsets,
        IsarBooleanPipe(),
      ) ??
      [];
  object.description = reader.readString(offsets[1]);
  object.modelPipes = reader.readObjectList<IsarModelPipe>(
        offsets[2],
        IsarModelPipeSchema.deserialize,
        allOffsets,
        IsarModelPipe(),
      ) ??
      [];
  object.mustacheName = reader.readString(offsets[3]);
  object.name = reader.readString(offsets[4]);
  object.pipeId = reader.readString(offsets[5]);
  object.textPipes = reader.readObjectList<IsarTextPipe>(
        offsets[6],
        IsarTextPipeSchema.deserialize,
        allOffsets,
        IsarTextPipe(),
      ) ??
      [];
  return object;
}

P _isarModelPipeDeserializeProp<P>(
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
      return (reader.readObjectList<IsarModelPipe>(
            offset,
            IsarModelPipeSchema.deserialize,
            allOffsets,
            IsarModelPipe(),
          ) ??
          []) as P;
    case 3:
      return (reader.readString(offset)) as P;
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarModelPipeQueryFilter
    on QueryBuilder<IsarModelPipe, IsarModelPipe, QFilterCondition> {
  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mustacheName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mustacheName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mustacheName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mustacheName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mustacheName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mustacheName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mustacheName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mustacheName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mustacheName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      mustacheNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mustacheName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameGreaterThan(
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameLessThan(
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameStartsWith(
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameEndsWith(
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pipeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pipeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pipeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pipeId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pipeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pipeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pipeId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pipeId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pipeId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      pipeIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pipeId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
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
}

extension IsarModelPipeQueryObject
    on QueryBuilder<IsarModelPipe, IsarModelPipe, QFilterCondition> {
  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      booleanPipesElement(FilterQuery<IsarBooleanPipe> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'booleanPipes');
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      modelPipesElement(FilterQuery<IsarModelPipe> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'modelPipes');
    });
  }

  QueryBuilder<IsarModelPipe, IsarModelPipe, QAfterFilterCondition>
      textPipesElement(FilterQuery<IsarTextPipe> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'textPipes');
    });
  }
}
