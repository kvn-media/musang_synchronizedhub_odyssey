// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ATGModelTable extends ATGModel with TableInfo<$ATGModelTable, ATGModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ATGModelTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<UuidValue> id = GeneratedColumn<UuidValue>(
      'id', aliasedName, false,
      type: PgTypes.uuid,
      requiredDuringInsert: false,
      defaultValue: genRandomUuid());
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<String> timestamp = GeneratedColumn<String>(
      'timestamp', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _alarmMeta = const VerificationMeta('alarm');
  @override
  late final GeneratedColumn<String> alarm = GeneratedColumn<String>(
      'alarm', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _levelBarrelMeta =
      const VerificationMeta('levelBarrel');
  @override
  late final GeneratedColumn<int> levelBarrel = GeneratedColumn<int>(
      'level_barrel', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _volumeChangeBarrelMeta =
      const VerificationMeta('volumeChangeBarrel');
  @override
  late final GeneratedColumn<int> volumeChangeBarrel = GeneratedColumn<int>(
      'volume_change_barrel', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _avgTempCelciusMeta =
      const VerificationMeta('avgTempCelcius');
  @override
  late final GeneratedColumn<int> avgTempCelcius = GeneratedColumn<int>(
      'avg_temp_celcius', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _waterLevelMeterMeta =
      const VerificationMeta('waterLevelMeter');
  @override
  late final GeneratedColumn<double> waterLevelMeter = GeneratedColumn<double>(
      'water_level_meter', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _productTempCelciusMeta =
      const VerificationMeta('productTempCelcius');
  @override
  late final GeneratedColumn<int> productTempCelcius = GeneratedColumn<int>(
      'product_temp_celcius', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        alarm,
        category,
        levelBarrel,
        volumeChangeBarrel,
        avgTempCelcius,
        waterLevelMeter,
        productTempCelcius
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'a_t_g_model';
  @override
  VerificationContext validateIntegrity(Insertable<ATGModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('timestamp')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['timestamp']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('alarm')) {
      context.handle(
          _alarmMeta, alarm.isAcceptableOrUnknown(data['alarm']!, _alarmMeta));
    } else if (isInserting) {
      context.missing(_alarmMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('level_barrel')) {
      context.handle(
          _levelBarrelMeta,
          levelBarrel.isAcceptableOrUnknown(
              data['level_barrel']!, _levelBarrelMeta));
    }
    if (data.containsKey('volume_change_barrel')) {
      context.handle(
          _volumeChangeBarrelMeta,
          volumeChangeBarrel.isAcceptableOrUnknown(
              data['volume_change_barrel']!, _volumeChangeBarrelMeta));
    }
    if (data.containsKey('avg_temp_celcius')) {
      context.handle(
          _avgTempCelciusMeta,
          avgTempCelcius.isAcceptableOrUnknown(
              data['avg_temp_celcius']!, _avgTempCelciusMeta));
    }
    if (data.containsKey('water_level_meter')) {
      context.handle(
          _waterLevelMeterMeta,
          waterLevelMeter.isAcceptableOrUnknown(
              data['water_level_meter']!, _waterLevelMeterMeta));
    }
    if (data.containsKey('product_temp_celcius')) {
      context.handle(
          _productTempCelciusMeta,
          productTempCelcius.isAcceptableOrUnknown(
              data['product_temp_celcius']!, _productTempCelciusMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ATGModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ATGModel(
      id: attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timestamp'])!,
      alarm: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alarm'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      levelBarrel: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}level_barrel']),
      volumeChangeBarrel: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}volume_change_barrel']),
      avgTempCelcius: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}avg_temp_celcius']),
      waterLevelMeter: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}water_level_meter']),
      productTempCelcius: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}product_temp_celcius']),
    );
  }

  @override
  $ATGModelTable createAlias(String alias) {
    return $ATGModelTable(attachedDatabase, alias);
  }
}

class ATGModel extends DataClass implements Insertable<ATGModel> {
  final UuidValue id;
  final String timestamp;
  final String alarm;
  final String category;
  final int? levelBarrel;
  final int? volumeChangeBarrel;
  final int? avgTempCelcius;
  final double? waterLevelMeter;
  final int? productTempCelcius;
  const ATGModel(
      {required this.id,
      required this.timestamp,
      required this.alarm,
      required this.category,
      this.levelBarrel,
      this.volumeChangeBarrel,
      this.avgTempCelcius,
      this.waterLevelMeter,
      this.productTempCelcius});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<UuidValue>(id, PgTypes.uuid);
    map['timestamp'] = Variable<String>(timestamp);
    map['alarm'] = Variable<String>(alarm);
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || levelBarrel != null) {
      map['level_barrel'] = Variable<int>(levelBarrel);
    }
    if (!nullToAbsent || volumeChangeBarrel != null) {
      map['volume_change_barrel'] = Variable<int>(volumeChangeBarrel);
    }
    if (!nullToAbsent || avgTempCelcius != null) {
      map['avg_temp_celcius'] = Variable<int>(avgTempCelcius);
    }
    if (!nullToAbsent || waterLevelMeter != null) {
      map['water_level_meter'] = Variable<double>(waterLevelMeter);
    }
    if (!nullToAbsent || productTempCelcius != null) {
      map['product_temp_celcius'] = Variable<int>(productTempCelcius);
    }
    return map;
  }

  ATGModelCompanion toCompanion(bool nullToAbsent) {
    return ATGModelCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      alarm: Value(alarm),
      category: Value(category),
      levelBarrel: levelBarrel == null && nullToAbsent
          ? const Value.absent()
          : Value(levelBarrel),
      volumeChangeBarrel: volumeChangeBarrel == null && nullToAbsent
          ? const Value.absent()
          : Value(volumeChangeBarrel),
      avgTempCelcius: avgTempCelcius == null && nullToAbsent
          ? const Value.absent()
          : Value(avgTempCelcius),
      waterLevelMeter: waterLevelMeter == null && nullToAbsent
          ? const Value.absent()
          : Value(waterLevelMeter),
      productTempCelcius: productTempCelcius == null && nullToAbsent
          ? const Value.absent()
          : Value(productTempCelcius),
    );
  }

  factory ATGModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ATGModel(
      id: serializer.fromJson<UuidValue>(json['id']),
      timestamp: serializer.fromJson<String>(json['timestamp']),
      alarm: serializer.fromJson<String>(json['alarm']),
      category: serializer.fromJson<String>(json['category']),
      levelBarrel: serializer.fromJson<int?>(json['levelBarrel']),
      volumeChangeBarrel: serializer.fromJson<int?>(json['volumeChangeBarrel']),
      avgTempCelcius: serializer.fromJson<int?>(json['avgTempCelcius']),
      waterLevelMeter: serializer.fromJson<double?>(json['waterLevelMeter']),
      productTempCelcius: serializer.fromJson<int?>(json['productTempCelcius']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<UuidValue>(id),
      'timestamp': serializer.toJson<String>(timestamp),
      'alarm': serializer.toJson<String>(alarm),
      'category': serializer.toJson<String>(category),
      'levelBarrel': serializer.toJson<int?>(levelBarrel),
      'volumeChangeBarrel': serializer.toJson<int?>(volumeChangeBarrel),
      'avgTempCelcius': serializer.toJson<int?>(avgTempCelcius),
      'waterLevelMeter': serializer.toJson<double?>(waterLevelMeter),
      'productTempCelcius': serializer.toJson<int?>(productTempCelcius),
    };
  }

  ATGModel copyWith(
          {UuidValue? id,
          String? timestamp,
          String? alarm,
          String? category,
          Value<int?> levelBarrel = const Value.absent(),
          Value<int?> volumeChangeBarrel = const Value.absent(),
          Value<int?> avgTempCelcius = const Value.absent(),
          Value<double?> waterLevelMeter = const Value.absent(),
          Value<int?> productTempCelcius = const Value.absent()}) =>
      ATGModel(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        alarm: alarm ?? this.alarm,
        category: category ?? this.category,
        levelBarrel: levelBarrel.present ? levelBarrel.value : this.levelBarrel,
        volumeChangeBarrel: volumeChangeBarrel.present
            ? volumeChangeBarrel.value
            : this.volumeChangeBarrel,
        avgTempCelcius:
            avgTempCelcius.present ? avgTempCelcius.value : this.avgTempCelcius,
        waterLevelMeter: waterLevelMeter.present
            ? waterLevelMeter.value
            : this.waterLevelMeter,
        productTempCelcius: productTempCelcius.present
            ? productTempCelcius.value
            : this.productTempCelcius,
      );
  @override
  String toString() {
    return (StringBuffer('ATGModel(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('alarm: $alarm, ')
          ..write('category: $category, ')
          ..write('levelBarrel: $levelBarrel, ')
          ..write('volumeChangeBarrel: $volumeChangeBarrel, ')
          ..write('avgTempCelcius: $avgTempCelcius, ')
          ..write('waterLevelMeter: $waterLevelMeter, ')
          ..write('productTempCelcius: $productTempCelcius')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, alarm, category, levelBarrel,
      volumeChangeBarrel, avgTempCelcius, waterLevelMeter, productTempCelcius);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ATGModel &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.alarm == this.alarm &&
          other.category == this.category &&
          other.levelBarrel == this.levelBarrel &&
          other.volumeChangeBarrel == this.volumeChangeBarrel &&
          other.avgTempCelcius == this.avgTempCelcius &&
          other.waterLevelMeter == this.waterLevelMeter &&
          other.productTempCelcius == this.productTempCelcius);
}

class ATGModelCompanion extends UpdateCompanion<ATGModel> {
  final Value<UuidValue> id;
  final Value<String> timestamp;
  final Value<String> alarm;
  final Value<String> category;
  final Value<int?> levelBarrel;
  final Value<int?> volumeChangeBarrel;
  final Value<int?> avgTempCelcius;
  final Value<double?> waterLevelMeter;
  final Value<int?> productTempCelcius;
  final Value<int> rowid;
  const ATGModelCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.alarm = const Value.absent(),
    this.category = const Value.absent(),
    this.levelBarrel = const Value.absent(),
    this.volumeChangeBarrel = const Value.absent(),
    this.avgTempCelcius = const Value.absent(),
    this.waterLevelMeter = const Value.absent(),
    this.productTempCelcius = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ATGModelCompanion.insert({
    this.id = const Value.absent(),
    required String timestamp,
    required String alarm,
    required String category,
    this.levelBarrel = const Value.absent(),
    this.volumeChangeBarrel = const Value.absent(),
    this.avgTempCelcius = const Value.absent(),
    this.waterLevelMeter = const Value.absent(),
    this.productTempCelcius = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : timestamp = Value(timestamp),
        alarm = Value(alarm),
        category = Value(category);
  static Insertable<ATGModel> custom({
    Expression<UuidValue>? id,
    Expression<String>? timestamp,
    Expression<String>? alarm,
    Expression<String>? category,
    Expression<int>? levelBarrel,
    Expression<int>? volumeChangeBarrel,
    Expression<int>? avgTempCelcius,
    Expression<double>? waterLevelMeter,
    Expression<int>? productTempCelcius,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (alarm != null) 'alarm': alarm,
      if (category != null) 'category': category,
      if (levelBarrel != null) 'level_barrel': levelBarrel,
      if (volumeChangeBarrel != null)
        'volume_change_barrel': volumeChangeBarrel,
      if (avgTempCelcius != null) 'avg_temp_celcius': avgTempCelcius,
      if (waterLevelMeter != null) 'water_level_meter': waterLevelMeter,
      if (productTempCelcius != null)
        'product_temp_celcius': productTempCelcius,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ATGModelCompanion copyWith(
      {Value<UuidValue>? id,
      Value<String>? timestamp,
      Value<String>? alarm,
      Value<String>? category,
      Value<int?>? levelBarrel,
      Value<int?>? volumeChangeBarrel,
      Value<int?>? avgTempCelcius,
      Value<double?>? waterLevelMeter,
      Value<int?>? productTempCelcius,
      Value<int>? rowid}) {
    return ATGModelCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      alarm: alarm ?? this.alarm,
      category: category ?? this.category,
      levelBarrel: levelBarrel ?? this.levelBarrel,
      volumeChangeBarrel: volumeChangeBarrel ?? this.volumeChangeBarrel,
      avgTempCelcius: avgTempCelcius ?? this.avgTempCelcius,
      waterLevelMeter: waterLevelMeter ?? this.waterLevelMeter,
      productTempCelcius: productTempCelcius ?? this.productTempCelcius,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<UuidValue>(id.value, PgTypes.uuid);
    }
    if (timestamp.present) {
      map['timestamp'] = Variable<String>(timestamp.value);
    }
    if (alarm.present) {
      map['alarm'] = Variable<String>(alarm.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (levelBarrel.present) {
      map['level_barrel'] = Variable<int>(levelBarrel.value);
    }
    if (volumeChangeBarrel.present) {
      map['volume_change_barrel'] = Variable<int>(volumeChangeBarrel.value);
    }
    if (avgTempCelcius.present) {
      map['avg_temp_celcius'] = Variable<int>(avgTempCelcius.value);
    }
    if (waterLevelMeter.present) {
      map['water_level_meter'] = Variable<double>(waterLevelMeter.value);
    }
    if (productTempCelcius.present) {
      map['product_temp_celcius'] = Variable<int>(productTempCelcius.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ATGModelCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('alarm: $alarm, ')
          ..write('category: $category, ')
          ..write('levelBarrel: $levelBarrel, ')
          ..write('volumeChangeBarrel: $volumeChangeBarrel, ')
          ..write('avgTempCelcius: $avgTempCelcius, ')
          ..write('waterLevelMeter: $waterLevelMeter, ')
          ..write('productTempCelcius: $productTempCelcius, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftPostgresDatabase extends GeneratedDatabase {
  _$DriftPostgresDatabase(QueryExecutor e) : super(e);
  late final $ATGModelTable aTGModel = $ATGModelTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [aTGModel];
}
