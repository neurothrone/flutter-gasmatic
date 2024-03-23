// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gas_volume_calculation_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGasVolumeCalculationIsarCollection on Isar {
  IsarCollection<GasVolumeCalculationIsar> get gasVolumeCalculationIsars =>
      this.collection();
}

const GasVolumeCalculationIsarSchema = CollectionSchema(
  name: r'GasVolumeCalculationIsar',
  id: 300334969142335316,
  properties: {
    r'calculatedDate': PropertySchema(
      id: 0,
      name: r'calculatedDate',
      type: IsarType.dateTime,
    ),
    r'gasVolume': PropertySchema(
      id: 1,
      name: r'gasVolume',
      type: IsarType.double,
    ),
    r'length': PropertySchema(
      id: 2,
      name: r'length',
      type: IsarType.double,
    ),
    r'nominalPipeSize': PropertySchema(
      id: 3,
      name: r'nominalPipeSize',
      type: IsarType.byte,
      enumMap: _GasVolumeCalculationIsarnominalPipeSizeEnumValueMap,
    ),
    r'pressure': PropertySchema(
      id: 4,
      name: r'pressure',
      type: IsarType.double,
    )
  },
  estimateSize: _gasVolumeCalculationIsarEstimateSize,
  serialize: _gasVolumeCalculationIsarSerialize,
  deserialize: _gasVolumeCalculationIsarDeserialize,
  deserializeProp: _gasVolumeCalculationIsarDeserializeProp,
  idName: r'id',
  indexes: {
    r'calculatedDate': IndexSchema(
      id: -5362219345121410558,
      name: r'calculatedDate',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'calculatedDate',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _gasVolumeCalculationIsarGetId,
  getLinks: _gasVolumeCalculationIsarGetLinks,
  attach: _gasVolumeCalculationIsarAttach,
  version: '3.1.0+1',
);

int _gasVolumeCalculationIsarEstimateSize(
  GasVolumeCalculationIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _gasVolumeCalculationIsarSerialize(
  GasVolumeCalculationIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.calculatedDate);
  writer.writeDouble(offsets[1], object.gasVolume);
  writer.writeDouble(offsets[2], object.length);
  writer.writeByte(offsets[3], object.nominalPipeSize.index);
  writer.writeDouble(offsets[4], object.pressure);
}

GasVolumeCalculationIsar _gasVolumeCalculationIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GasVolumeCalculationIsar();
  object.calculatedDate = reader.readDateTime(offsets[0]);
  object.gasVolume = reader.readDouble(offsets[1]);
  object.id = id;
  object.length = reader.readDouble(offsets[2]);
  object.nominalPipeSize = _GasVolumeCalculationIsarnominalPipeSizeValueEnumMap[
          reader.readByteOrNull(offsets[3])] ??
      NominalPipeSize.twenty;
  object.pressure = reader.readDouble(offsets[4]);
  return object;
}

P _gasVolumeCalculationIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (_GasVolumeCalculationIsarnominalPipeSizeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          NominalPipeSize.twenty) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _GasVolumeCalculationIsarnominalPipeSizeEnumValueMap = {
  'twenty': 0,
  'twentyFive': 1,
  'thirtyTwo': 2,
  'forty': 3,
  'fifty': 4,
  'sixtyFive': 5,
  'eighty': 6,
  'ninety': 7,
  'hundred': 8,
  'hundredFifteen': 9,
  'hundredTwentyFive': 10,
  'hundredFifty': 11,
  'twoHundred': 12,
  'twoHundredFifty': 13,
  'threeHundred': 14,
  'threeHundredFifty': 15,
  'fourHundred': 16,
};
const _GasVolumeCalculationIsarnominalPipeSizeValueEnumMap = {
  0: NominalPipeSize.twenty,
  1: NominalPipeSize.twentyFive,
  2: NominalPipeSize.thirtyTwo,
  3: NominalPipeSize.forty,
  4: NominalPipeSize.fifty,
  5: NominalPipeSize.sixtyFive,
  6: NominalPipeSize.eighty,
  7: NominalPipeSize.ninety,
  8: NominalPipeSize.hundred,
  9: NominalPipeSize.hundredFifteen,
  10: NominalPipeSize.hundredTwentyFive,
  11: NominalPipeSize.hundredFifty,
  12: NominalPipeSize.twoHundred,
  13: NominalPipeSize.twoHundredFifty,
  14: NominalPipeSize.threeHundred,
  15: NominalPipeSize.threeHundredFifty,
  16: NominalPipeSize.fourHundred,
};

Id _gasVolumeCalculationIsarGetId(GasVolumeCalculationIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gasVolumeCalculationIsarGetLinks(
    GasVolumeCalculationIsar object) {
  return [];
}

void _gasVolumeCalculationIsarAttach(
    IsarCollection<dynamic> col, Id id, GasVolumeCalculationIsar object) {
  object.id = id;
}

extension GasVolumeCalculationIsarQueryWhereSort on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QWhere> {
  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterWhere>
      anyCalculatedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'calculatedDate'),
      );
    });
  }
}

extension GasVolumeCalculationIsarQueryWhere on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QWhereClause> {
  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
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

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
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

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> calculatedDateEqualTo(DateTime calculatedDate) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'calculatedDate',
        value: [calculatedDate],
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> calculatedDateNotEqualTo(DateTime calculatedDate) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'calculatedDate',
              lower: [],
              upper: [calculatedDate],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'calculatedDate',
              lower: [calculatedDate],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'calculatedDate',
              lower: [calculatedDate],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'calculatedDate',
              lower: [],
              upper: [calculatedDate],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> calculatedDateGreaterThan(
    DateTime calculatedDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'calculatedDate',
        lower: [calculatedDate],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> calculatedDateLessThan(
    DateTime calculatedDate, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'calculatedDate',
        lower: [],
        upper: [calculatedDate],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterWhereClause> calculatedDateBetween(
    DateTime lowerCalculatedDate,
    DateTime upperCalculatedDate, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'calculatedDate',
        lower: [lowerCalculatedDate],
        includeLower: includeLower,
        upper: [upperCalculatedDate],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GasVolumeCalculationIsarQueryFilter on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QFilterCondition> {
  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> calculatedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'calculatedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> calculatedDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'calculatedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> calculatedDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'calculatedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> calculatedDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'calculatedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> gasVolumeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gasVolume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> gasVolumeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gasVolume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> gasVolumeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gasVolume',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> gasVolumeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gasVolume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
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

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
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

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
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

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> lengthEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'length',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> lengthGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'length',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> lengthLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'length',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> lengthBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'length',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> nominalPipeSizeEqualTo(NominalPipeSize value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nominalPipeSize',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> nominalPipeSizeGreaterThan(
    NominalPipeSize value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nominalPipeSize',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> nominalPipeSizeLessThan(
    NominalPipeSize value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nominalPipeSize',
        value: value,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> nominalPipeSizeBetween(
    NominalPipeSize lower,
    NominalPipeSize upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nominalPipeSize',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> pressureEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> pressureGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> pressureLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pressure',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar,
      QAfterFilterCondition> pressureBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pressure',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension GasVolumeCalculationIsarQueryObject on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QFilterCondition> {}

extension GasVolumeCalculationIsarQueryLinks on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QFilterCondition> {}

extension GasVolumeCalculationIsarQuerySortBy on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QSortBy> {
  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByCalculatedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculatedDate', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByCalculatedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculatedDate', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByGasVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gasVolume', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByGasVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gasVolume', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByNominalPipeSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominalPipeSize', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByNominalPipeSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominalPipeSize', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      sortByPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.desc);
    });
  }
}

extension GasVolumeCalculationIsarQuerySortThenBy on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QSortThenBy> {
  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByCalculatedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculatedDate', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByCalculatedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'calculatedDate', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByGasVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gasVolume', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByGasVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gasVolume', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'length', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByNominalPipeSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominalPipeSize', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByNominalPipeSizeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nominalPipeSize', Sort.desc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.asc);
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QAfterSortBy>
      thenByPressureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pressure', Sort.desc);
    });
  }
}

extension GasVolumeCalculationIsarQueryWhereDistinct on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QDistinct> {
  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QDistinct>
      distinctByCalculatedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'calculatedDate');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QDistinct>
      distinctByGasVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gasVolume');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QDistinct>
      distinctByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'length');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QDistinct>
      distinctByNominalPipeSize() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nominalPipeSize');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, GasVolumeCalculationIsar, QDistinct>
      distinctByPressure() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pressure');
    });
  }
}

extension GasVolumeCalculationIsarQueryProperty on QueryBuilder<
    GasVolumeCalculationIsar, GasVolumeCalculationIsar, QQueryProperty> {
  QueryBuilder<GasVolumeCalculationIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, DateTime, QQueryOperations>
      calculatedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'calculatedDate');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, double, QQueryOperations>
      gasVolumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gasVolume');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, double, QQueryOperations>
      lengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'length');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, NominalPipeSize, QQueryOperations>
      nominalPipeSizeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nominalPipeSize');
    });
  }

  QueryBuilder<GasVolumeCalculationIsar, double, QQueryOperations>
      pressureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pressure');
    });
  }
}
