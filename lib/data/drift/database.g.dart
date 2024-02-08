// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ATGsTable extends ATGs with TableInfo<$ATGsTable, ATG> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ATGsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _atgTimestampMeta =
      const VerificationMeta('atgTimestamp');
  @override
  late final GeneratedColumn<DateTime> atgTimestamp = GeneratedColumn<DateTime>(
      'atg_timestamp', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _levelBarrelMeta =
      const VerificationMeta('levelBarrel');
  @override
  late final GeneratedColumn<double> levelBarrel = GeneratedColumn<double>(
      'level_barrel', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _volumeChangeBarrelMeta =
      const VerificationMeta('volumeChangeBarrel');
  @override
  late final GeneratedColumn<double> volumeChangeBarrel =
      GeneratedColumn<double>('volume_change_barrel', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _avgTempCelciusMeta =
      const VerificationMeta('avgTempCelcius');
  @override
  late final GeneratedColumn<double> avgTempCelcius = GeneratedColumn<double>(
      'avg_temp_celcius', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _waterLevelMeterMeta =
      const VerificationMeta('waterLevelMeter');
  @override
  late final GeneratedColumn<double> waterLevelMeter = GeneratedColumn<double>(
      'water_level_meter', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _productTempCelciusMeta =
      const VerificationMeta('productTempCelcius');
  @override
  late final GeneratedColumn<double> productTempCelcius =
      GeneratedColumn<double>('product_temp_celcius', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _alarmMeta = const VerificationMeta('alarm');
  @override
  late final GeneratedColumn<String> alarm = GeneratedColumn<String>(
      'alarm', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _siteIdMeta = const VerificationMeta('siteId');
  @override
  late final GeneratedColumn<int> siteId = GeneratedColumn<int>(
      'site_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        atgTimestamp,
        levelBarrel,
        volumeChangeBarrel,
        avgTempCelcius,
        waterLevelMeter,
        productTempCelcius,
        alarm,
        siteId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'a_t_gs';
  @override
  VerificationContext validateIntegrity(Insertable<ATG> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('atg_timestamp')) {
      context.handle(
          _atgTimestampMeta,
          atgTimestamp.isAcceptableOrUnknown(
              data['atg_timestamp']!, _atgTimestampMeta));
    } else if (isInserting) {
      context.missing(_atgTimestampMeta);
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
    if (data.containsKey('alarm')) {
      context.handle(
          _alarmMeta, alarm.isAcceptableOrUnknown(data['alarm']!, _alarmMeta));
    }
    if (data.containsKey('site_id')) {
      context.handle(_siteIdMeta,
          siteId.isAcceptableOrUnknown(data['site_id']!, _siteIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {atgTimestamp};
  @override
  ATG map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ATG(
      atgTimestamp: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}atg_timestamp'])!,
      levelBarrel: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}level_barrel'])!,
      volumeChangeBarrel: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}volume_change_barrel']),
      avgTempCelcius: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}avg_temp_celcius']),
      waterLevelMeter: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}water_level_meter']),
      productTempCelcius: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}product_temp_celcius']),
      alarm: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}alarm']),
      siteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}site_id']),
    );
  }

  @override
  $ATGsTable createAlias(String alias) {
    return $ATGsTable(attachedDatabase, alias);
  }
}

class ATG extends DataClass implements Insertable<ATG> {
  final DateTime atgTimestamp;
  final double levelBarrel;
  final double? volumeChangeBarrel;
  final double? avgTempCelcius;
  final double? waterLevelMeter;
  final double? productTempCelcius;
  final String? alarm;
  final int? siteId;
  const ATG(
      {required this.atgTimestamp,
      required this.levelBarrel,
      this.volumeChangeBarrel,
      this.avgTempCelcius,
      this.waterLevelMeter,
      this.productTempCelcius,
      this.alarm,
      this.siteId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['atg_timestamp'] = Variable<DateTime>(atgTimestamp);
    map['level_barrel'] = Variable<double>(levelBarrel);
    if (!nullToAbsent || volumeChangeBarrel != null) {
      map['volume_change_barrel'] = Variable<double>(volumeChangeBarrel);
    }
    if (!nullToAbsent || avgTempCelcius != null) {
      map['avg_temp_celcius'] = Variable<double>(avgTempCelcius);
    }
    if (!nullToAbsent || waterLevelMeter != null) {
      map['water_level_meter'] = Variable<double>(waterLevelMeter);
    }
    if (!nullToAbsent || productTempCelcius != null) {
      map['product_temp_celcius'] = Variable<double>(productTempCelcius);
    }
    if (!nullToAbsent || alarm != null) {
      map['alarm'] = Variable<String>(alarm);
    }
    if (!nullToAbsent || siteId != null) {
      map['site_id'] = Variable<int>(siteId);
    }
    return map;
  }

  ATGsCompanion toCompanion(bool nullToAbsent) {
    return ATGsCompanion(
      atgTimestamp: Value(atgTimestamp),
      levelBarrel: Value(levelBarrel),
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
      alarm:
          alarm == null && nullToAbsent ? const Value.absent() : Value(alarm),
      siteId:
          siteId == null && nullToAbsent ? const Value.absent() : Value(siteId),
    );
  }

  factory ATG.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ATG(
      atgTimestamp: serializer.fromJson<DateTime>(json['atgTimestamp']),
      levelBarrel: serializer.fromJson<double>(json['levelBarrel']),
      volumeChangeBarrel:
          serializer.fromJson<double?>(json['volumeChangeBarrel']),
      avgTempCelcius: serializer.fromJson<double?>(json['avgTempCelcius']),
      waterLevelMeter: serializer.fromJson<double?>(json['waterLevelMeter']),
      productTempCelcius:
          serializer.fromJson<double?>(json['productTempCelcius']),
      alarm: serializer.fromJson<String?>(json['alarm']),
      siteId: serializer.fromJson<int?>(json['siteId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'atgTimestamp': serializer.toJson<DateTime>(atgTimestamp),
      'levelBarrel': serializer.toJson<double>(levelBarrel),
      'volumeChangeBarrel': serializer.toJson<double?>(volumeChangeBarrel),
      'avgTempCelcius': serializer.toJson<double?>(avgTempCelcius),
      'waterLevelMeter': serializer.toJson<double?>(waterLevelMeter),
      'productTempCelcius': serializer.toJson<double?>(productTempCelcius),
      'alarm': serializer.toJson<String?>(alarm),
      'siteId': serializer.toJson<int?>(siteId),
    };
  }

  ATG copyWith(
          {DateTime? atgTimestamp,
          double? levelBarrel,
          Value<double?> volumeChangeBarrel = const Value.absent(),
          Value<double?> avgTempCelcius = const Value.absent(),
          Value<double?> waterLevelMeter = const Value.absent(),
          Value<double?> productTempCelcius = const Value.absent(),
          Value<String?> alarm = const Value.absent(),
          Value<int?> siteId = const Value.absent()}) =>
      ATG(
        atgTimestamp: atgTimestamp ?? this.atgTimestamp,
        levelBarrel: levelBarrel ?? this.levelBarrel,
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
        alarm: alarm.present ? alarm.value : this.alarm,
        siteId: siteId.present ? siteId.value : this.siteId,
      );
  @override
  String toString() {
    return (StringBuffer('ATG(')
          ..write('atgTimestamp: $atgTimestamp, ')
          ..write('levelBarrel: $levelBarrel, ')
          ..write('volumeChangeBarrel: $volumeChangeBarrel, ')
          ..write('avgTempCelcius: $avgTempCelcius, ')
          ..write('waterLevelMeter: $waterLevelMeter, ')
          ..write('productTempCelcius: $productTempCelcius, ')
          ..write('alarm: $alarm, ')
          ..write('siteId: $siteId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(atgTimestamp, levelBarrel, volumeChangeBarrel,
      avgTempCelcius, waterLevelMeter, productTempCelcius, alarm, siteId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ATG &&
          other.atgTimestamp == this.atgTimestamp &&
          other.levelBarrel == this.levelBarrel &&
          other.volumeChangeBarrel == this.volumeChangeBarrel &&
          other.avgTempCelcius == this.avgTempCelcius &&
          other.waterLevelMeter == this.waterLevelMeter &&
          other.productTempCelcius == this.productTempCelcius &&
          other.alarm == this.alarm &&
          other.siteId == this.siteId);
}

class ATGsCompanion extends UpdateCompanion<ATG> {
  final Value<DateTime> atgTimestamp;
  final Value<double> levelBarrel;
  final Value<double?> volumeChangeBarrel;
  final Value<double?> avgTempCelcius;
  final Value<double?> waterLevelMeter;
  final Value<double?> productTempCelcius;
  final Value<String?> alarm;
  final Value<int?> siteId;
  final Value<int> rowid;
  const ATGsCompanion({
    this.atgTimestamp = const Value.absent(),
    this.levelBarrel = const Value.absent(),
    this.volumeChangeBarrel = const Value.absent(),
    this.avgTempCelcius = const Value.absent(),
    this.waterLevelMeter = const Value.absent(),
    this.productTempCelcius = const Value.absent(),
    this.alarm = const Value.absent(),
    this.siteId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ATGsCompanion.insert({
    required DateTime atgTimestamp,
    this.levelBarrel = const Value.absent(),
    this.volumeChangeBarrel = const Value.absent(),
    this.avgTempCelcius = const Value.absent(),
    this.waterLevelMeter = const Value.absent(),
    this.productTempCelcius = const Value.absent(),
    this.alarm = const Value.absent(),
    this.siteId = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : atgTimestamp = Value(atgTimestamp);
  static Insertable<ATG> custom({
    Expression<DateTime>? atgTimestamp,
    Expression<double>? levelBarrel,
    Expression<double>? volumeChangeBarrel,
    Expression<double>? avgTempCelcius,
    Expression<double>? waterLevelMeter,
    Expression<double>? productTempCelcius,
    Expression<String>? alarm,
    Expression<int>? siteId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (atgTimestamp != null) 'atg_timestamp': atgTimestamp,
      if (levelBarrel != null) 'level_barrel': levelBarrel,
      if (volumeChangeBarrel != null)
        'volume_change_barrel': volumeChangeBarrel,
      if (avgTempCelcius != null) 'avg_temp_celcius': avgTempCelcius,
      if (waterLevelMeter != null) 'water_level_meter': waterLevelMeter,
      if (productTempCelcius != null)
        'product_temp_celcius': productTempCelcius,
      if (alarm != null) 'alarm': alarm,
      if (siteId != null) 'site_id': siteId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ATGsCompanion copyWith(
      {Value<DateTime>? atgTimestamp,
      Value<double>? levelBarrel,
      Value<double?>? volumeChangeBarrel,
      Value<double?>? avgTempCelcius,
      Value<double?>? waterLevelMeter,
      Value<double?>? productTempCelcius,
      Value<String?>? alarm,
      Value<int?>? siteId,
      Value<int>? rowid}) {
    return ATGsCompanion(
      atgTimestamp: atgTimestamp ?? this.atgTimestamp,
      levelBarrel: levelBarrel ?? this.levelBarrel,
      volumeChangeBarrel: volumeChangeBarrel ?? this.volumeChangeBarrel,
      avgTempCelcius: avgTempCelcius ?? this.avgTempCelcius,
      waterLevelMeter: waterLevelMeter ?? this.waterLevelMeter,
      productTempCelcius: productTempCelcius ?? this.productTempCelcius,
      alarm: alarm ?? this.alarm,
      siteId: siteId ?? this.siteId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (atgTimestamp.present) {
      map['atg_timestamp'] = Variable<DateTime>(atgTimestamp.value);
    }
    if (levelBarrel.present) {
      map['level_barrel'] = Variable<double>(levelBarrel.value);
    }
    if (volumeChangeBarrel.present) {
      map['volume_change_barrel'] = Variable<double>(volumeChangeBarrel.value);
    }
    if (avgTempCelcius.present) {
      map['avg_temp_celcius'] = Variable<double>(avgTempCelcius.value);
    }
    if (waterLevelMeter.present) {
      map['water_level_meter'] = Variable<double>(waterLevelMeter.value);
    }
    if (productTempCelcius.present) {
      map['product_temp_celcius'] = Variable<double>(productTempCelcius.value);
    }
    if (alarm.present) {
      map['alarm'] = Variable<String>(alarm.value);
    }
    if (siteId.present) {
      map['site_id'] = Variable<int>(siteId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ATGsCompanion(')
          ..write('atgTimestamp: $atgTimestamp, ')
          ..write('levelBarrel: $levelBarrel, ')
          ..write('volumeChangeBarrel: $volumeChangeBarrel, ')
          ..write('avgTempCelcius: $avgTempCelcius, ')
          ..write('waterLevelMeter: $waterLevelMeter, ')
          ..write('productTempCelcius: $productTempCelcius, ')
          ..write('alarm: $alarm, ')
          ..write('siteId: $siteId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FlowMetersTable extends FlowMeters
    with TableInfo<$FlowMetersTable, FlowMeter> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FlowMetersTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _flowRateGpmMeta =
      const VerificationMeta('flowRateGpm');
  @override
  late final GeneratedColumn<int> flowRateGpm = GeneratedColumn<int>(
      'flow_rate_gpm', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalFlowGalonMeta =
      const VerificationMeta('totalFlowGalon');
  @override
  late final GeneratedColumn<int> totalFlowGalon = GeneratedColumn<int>(
      'total_flow_galon', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _tempFahrenheitMeta =
      const VerificationMeta('tempFahrenheit');
  @override
  late final GeneratedColumn<int> tempFahrenheit = GeneratedColumn<int>(
      'temp_fahrenheit', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _pressurePsiMeta =
      const VerificationMeta('pressurePsi');
  @override
  late final GeneratedColumn<int> pressurePsi = GeneratedColumn<int>(
      'pressure_psi', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _densitylbGalMeta =
      const VerificationMeta('densitylbGal');
  @override
  late final GeneratedColumn<double> densitylbGal = GeneratedColumn<double>(
      'densitylb_gal', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _viscosityCpMeta =
      const VerificationMeta('viscosityCp');
  @override
  late final GeneratedColumn<int> viscosityCp = GeneratedColumn<int>(
      'viscosity_cp', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _apiGravityMeta =
      const VerificationMeta('apiGravity');
  @override
  late final GeneratedColumn<int> apiGravity = GeneratedColumn<int>(
      'api_gravity', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        timestamp,
        flowRateGpm,
        totalFlowGalon,
        tempFahrenheit,
        pressurePsi,
        densitylbGal,
        viscosityCp,
        apiGravity
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'flow_meters';
  @override
  VerificationContext validateIntegrity(Insertable<FlowMeter> instance,
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
    if (data.containsKey('flow_rate_gpm')) {
      context.handle(
          _flowRateGpmMeta,
          flowRateGpm.isAcceptableOrUnknown(
              data['flow_rate_gpm']!, _flowRateGpmMeta));
    }
    if (data.containsKey('total_flow_galon')) {
      context.handle(
          _totalFlowGalonMeta,
          totalFlowGalon.isAcceptableOrUnknown(
              data['total_flow_galon']!, _totalFlowGalonMeta));
    }
    if (data.containsKey('temp_fahrenheit')) {
      context.handle(
          _tempFahrenheitMeta,
          tempFahrenheit.isAcceptableOrUnknown(
              data['temp_fahrenheit']!, _tempFahrenheitMeta));
    }
    if (data.containsKey('pressure_psi')) {
      context.handle(
          _pressurePsiMeta,
          pressurePsi.isAcceptableOrUnknown(
              data['pressure_psi']!, _pressurePsiMeta));
    }
    if (data.containsKey('densitylb_gal')) {
      context.handle(
          _densitylbGalMeta,
          densitylbGal.isAcceptableOrUnknown(
              data['densitylb_gal']!, _densitylbGalMeta));
    }
    if (data.containsKey('viscosity_cp')) {
      context.handle(
          _viscosityCpMeta,
          viscosityCp.isAcceptableOrUnknown(
              data['viscosity_cp']!, _viscosityCpMeta));
    }
    if (data.containsKey('api_gravity')) {
      context.handle(
          _apiGravityMeta,
          apiGravity.isAcceptableOrUnknown(
              data['api_gravity']!, _apiGravityMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FlowMeter map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FlowMeter(
      id: attachedDatabase.typeMapping
          .read(PgTypes.uuid, data['${effectivePrefix}id'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}timestamp'])!,
      flowRateGpm: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}flow_rate_gpm']),
      totalFlowGalon: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_flow_galon']),
      tempFahrenheit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}temp_fahrenheit']),
      pressurePsi: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pressure_psi']),
      densitylbGal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}densitylb_gal']),
      viscosityCp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}viscosity_cp']),
      apiGravity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}api_gravity']),
    );
  }

  @override
  $FlowMetersTable createAlias(String alias) {
    return $FlowMetersTable(attachedDatabase, alias);
  }
}

class FlowMeter extends DataClass implements Insertable<FlowMeter> {
  final UuidValue id;
  final String timestamp;
  final int? flowRateGpm;
  final int? totalFlowGalon;
  final int? tempFahrenheit;
  final int? pressurePsi;
  final double? densitylbGal;
  final int? viscosityCp;
  final int? apiGravity;
  const FlowMeter(
      {required this.id,
      required this.timestamp,
      this.flowRateGpm,
      this.totalFlowGalon,
      this.tempFahrenheit,
      this.pressurePsi,
      this.densitylbGal,
      this.viscosityCp,
      this.apiGravity});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<UuidValue>(id, PgTypes.uuid);
    map['timestamp'] = Variable<String>(timestamp);
    if (!nullToAbsent || flowRateGpm != null) {
      map['flow_rate_gpm'] = Variable<int>(flowRateGpm);
    }
    if (!nullToAbsent || totalFlowGalon != null) {
      map['total_flow_galon'] = Variable<int>(totalFlowGalon);
    }
    if (!nullToAbsent || tempFahrenheit != null) {
      map['temp_fahrenheit'] = Variable<int>(tempFahrenheit);
    }
    if (!nullToAbsent || pressurePsi != null) {
      map['pressure_psi'] = Variable<int>(pressurePsi);
    }
    if (!nullToAbsent || densitylbGal != null) {
      map['densitylb_gal'] = Variable<double>(densitylbGal);
    }
    if (!nullToAbsent || viscosityCp != null) {
      map['viscosity_cp'] = Variable<int>(viscosityCp);
    }
    if (!nullToAbsent || apiGravity != null) {
      map['api_gravity'] = Variable<int>(apiGravity);
    }
    return map;
  }

  FlowMetersCompanion toCompanion(bool nullToAbsent) {
    return FlowMetersCompanion(
      id: Value(id),
      timestamp: Value(timestamp),
      flowRateGpm: flowRateGpm == null && nullToAbsent
          ? const Value.absent()
          : Value(flowRateGpm),
      totalFlowGalon: totalFlowGalon == null && nullToAbsent
          ? const Value.absent()
          : Value(totalFlowGalon),
      tempFahrenheit: tempFahrenheit == null && nullToAbsent
          ? const Value.absent()
          : Value(tempFahrenheit),
      pressurePsi: pressurePsi == null && nullToAbsent
          ? const Value.absent()
          : Value(pressurePsi),
      densitylbGal: densitylbGal == null && nullToAbsent
          ? const Value.absent()
          : Value(densitylbGal),
      viscosityCp: viscosityCp == null && nullToAbsent
          ? const Value.absent()
          : Value(viscosityCp),
      apiGravity: apiGravity == null && nullToAbsent
          ? const Value.absent()
          : Value(apiGravity),
    );
  }

  factory FlowMeter.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FlowMeter(
      id: serializer.fromJson<UuidValue>(json['id']),
      timestamp: serializer.fromJson<String>(json['timestamp']),
      flowRateGpm: serializer.fromJson<int?>(json['flowRateGpm']),
      totalFlowGalon: serializer.fromJson<int?>(json['totalFlowGalon']),
      tempFahrenheit: serializer.fromJson<int?>(json['tempFahrenheit']),
      pressurePsi: serializer.fromJson<int?>(json['pressurePsi']),
      densitylbGal: serializer.fromJson<double?>(json['densitylbGal']),
      viscosityCp: serializer.fromJson<int?>(json['viscosityCp']),
      apiGravity: serializer.fromJson<int?>(json['apiGravity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<UuidValue>(id),
      'timestamp': serializer.toJson<String>(timestamp),
      'flowRateGpm': serializer.toJson<int?>(flowRateGpm),
      'totalFlowGalon': serializer.toJson<int?>(totalFlowGalon),
      'tempFahrenheit': serializer.toJson<int?>(tempFahrenheit),
      'pressurePsi': serializer.toJson<int?>(pressurePsi),
      'densitylbGal': serializer.toJson<double?>(densitylbGal),
      'viscosityCp': serializer.toJson<int?>(viscosityCp),
      'apiGravity': serializer.toJson<int?>(apiGravity),
    };
  }

  FlowMeter copyWith(
          {UuidValue? id,
          String? timestamp,
          Value<int?> flowRateGpm = const Value.absent(),
          Value<int?> totalFlowGalon = const Value.absent(),
          Value<int?> tempFahrenheit = const Value.absent(),
          Value<int?> pressurePsi = const Value.absent(),
          Value<double?> densitylbGal = const Value.absent(),
          Value<int?> viscosityCp = const Value.absent(),
          Value<int?> apiGravity = const Value.absent()}) =>
      FlowMeter(
        id: id ?? this.id,
        timestamp: timestamp ?? this.timestamp,
        flowRateGpm: flowRateGpm.present ? flowRateGpm.value : this.flowRateGpm,
        totalFlowGalon:
            totalFlowGalon.present ? totalFlowGalon.value : this.totalFlowGalon,
        tempFahrenheit:
            tempFahrenheit.present ? tempFahrenheit.value : this.tempFahrenheit,
        pressurePsi: pressurePsi.present ? pressurePsi.value : this.pressurePsi,
        densitylbGal:
            densitylbGal.present ? densitylbGal.value : this.densitylbGal,
        viscosityCp: viscosityCp.present ? viscosityCp.value : this.viscosityCp,
        apiGravity: apiGravity.present ? apiGravity.value : this.apiGravity,
      );
  @override
  String toString() {
    return (StringBuffer('FlowMeter(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('flowRateGpm: $flowRateGpm, ')
          ..write('totalFlowGalon: $totalFlowGalon, ')
          ..write('tempFahrenheit: $tempFahrenheit, ')
          ..write('pressurePsi: $pressurePsi, ')
          ..write('densitylbGal: $densitylbGal, ')
          ..write('viscosityCp: $viscosityCp, ')
          ..write('apiGravity: $apiGravity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, timestamp, flowRateGpm, totalFlowGalon,
      tempFahrenheit, pressurePsi, densitylbGal, viscosityCp, apiGravity);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FlowMeter &&
          other.id == this.id &&
          other.timestamp == this.timestamp &&
          other.flowRateGpm == this.flowRateGpm &&
          other.totalFlowGalon == this.totalFlowGalon &&
          other.tempFahrenheit == this.tempFahrenheit &&
          other.pressurePsi == this.pressurePsi &&
          other.densitylbGal == this.densitylbGal &&
          other.viscosityCp == this.viscosityCp &&
          other.apiGravity == this.apiGravity);
}

class FlowMetersCompanion extends UpdateCompanion<FlowMeter> {
  final Value<UuidValue> id;
  final Value<String> timestamp;
  final Value<int?> flowRateGpm;
  final Value<int?> totalFlowGalon;
  final Value<int?> tempFahrenheit;
  final Value<int?> pressurePsi;
  final Value<double?> densitylbGal;
  final Value<int?> viscosityCp;
  final Value<int?> apiGravity;
  final Value<int> rowid;
  const FlowMetersCompanion({
    this.id = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.flowRateGpm = const Value.absent(),
    this.totalFlowGalon = const Value.absent(),
    this.tempFahrenheit = const Value.absent(),
    this.pressurePsi = const Value.absent(),
    this.densitylbGal = const Value.absent(),
    this.viscosityCp = const Value.absent(),
    this.apiGravity = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FlowMetersCompanion.insert({
    this.id = const Value.absent(),
    required String timestamp,
    this.flowRateGpm = const Value.absent(),
    this.totalFlowGalon = const Value.absent(),
    this.tempFahrenheit = const Value.absent(),
    this.pressurePsi = const Value.absent(),
    this.densitylbGal = const Value.absent(),
    this.viscosityCp = const Value.absent(),
    this.apiGravity = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : timestamp = Value(timestamp);
  static Insertable<FlowMeter> custom({
    Expression<UuidValue>? id,
    Expression<String>? timestamp,
    Expression<int>? flowRateGpm,
    Expression<int>? totalFlowGalon,
    Expression<int>? tempFahrenheit,
    Expression<int>? pressurePsi,
    Expression<double>? densitylbGal,
    Expression<int>? viscosityCp,
    Expression<int>? apiGravity,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (timestamp != null) 'timestamp': timestamp,
      if (flowRateGpm != null) 'flow_rate_gpm': flowRateGpm,
      if (totalFlowGalon != null) 'total_flow_galon': totalFlowGalon,
      if (tempFahrenheit != null) 'temp_fahrenheit': tempFahrenheit,
      if (pressurePsi != null) 'pressure_psi': pressurePsi,
      if (densitylbGal != null) 'densitylb_gal': densitylbGal,
      if (viscosityCp != null) 'viscosity_cp': viscosityCp,
      if (apiGravity != null) 'api_gravity': apiGravity,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FlowMetersCompanion copyWith(
      {Value<UuidValue>? id,
      Value<String>? timestamp,
      Value<int?>? flowRateGpm,
      Value<int?>? totalFlowGalon,
      Value<int?>? tempFahrenheit,
      Value<int?>? pressurePsi,
      Value<double?>? densitylbGal,
      Value<int?>? viscosityCp,
      Value<int?>? apiGravity,
      Value<int>? rowid}) {
    return FlowMetersCompanion(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      flowRateGpm: flowRateGpm ?? this.flowRateGpm,
      totalFlowGalon: totalFlowGalon ?? this.totalFlowGalon,
      tempFahrenheit: tempFahrenheit ?? this.tempFahrenheit,
      pressurePsi: pressurePsi ?? this.pressurePsi,
      densitylbGal: densitylbGal ?? this.densitylbGal,
      viscosityCp: viscosityCp ?? this.viscosityCp,
      apiGravity: apiGravity ?? this.apiGravity,
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
    if (flowRateGpm.present) {
      map['flow_rate_gpm'] = Variable<int>(flowRateGpm.value);
    }
    if (totalFlowGalon.present) {
      map['total_flow_galon'] = Variable<int>(totalFlowGalon.value);
    }
    if (tempFahrenheit.present) {
      map['temp_fahrenheit'] = Variable<int>(tempFahrenheit.value);
    }
    if (pressurePsi.present) {
      map['pressure_psi'] = Variable<int>(pressurePsi.value);
    }
    if (densitylbGal.present) {
      map['densitylb_gal'] = Variable<double>(densitylbGal.value);
    }
    if (viscosityCp.present) {
      map['viscosity_cp'] = Variable<int>(viscosityCp.value);
    }
    if (apiGravity.present) {
      map['api_gravity'] = Variable<int>(apiGravity.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FlowMetersCompanion(')
          ..write('id: $id, ')
          ..write('timestamp: $timestamp, ')
          ..write('flowRateGpm: $flowRateGpm, ')
          ..write('totalFlowGalon: $totalFlowGalon, ')
          ..write('tempFahrenheit: $tempFahrenheit, ')
          ..write('pressurePsi: $pressurePsi, ')
          ..write('densitylbGal: $densitylbGal, ')
          ..write('viscosityCp: $viscosityCp, ')
          ..write('apiGravity: $apiGravity, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userLoginMeta =
      const VerificationMeta('userLogin');
  @override
  late final GeneratedColumn<String> userLogin = GeneratedColumn<String>(
      'user_login', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userPassMeta =
      const VerificationMeta('userPass');
  @override
  late final GeneratedColumn<String> userPass = GeneratedColumn<String>(
      'user_pass', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userNicenameMeta =
      const VerificationMeta('userNicename');
  @override
  late final GeneratedColumn<String> userNicename = GeneratedColumn<String>(
      'user_nicename', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userEmailMeta =
      const VerificationMeta('userEmail');
  @override
  late final GeneratedColumn<String> userEmail = GeneratedColumn<String>(
      'user_email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userUrlMeta =
      const VerificationMeta('userUrl');
  @override
  late final GeneratedColumn<String> userUrl = GeneratedColumn<String>(
      'user_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userRegisteredMeta =
      const VerificationMeta('userRegistered');
  @override
  late final GeneratedColumn<DateTime> userRegistered =
      GeneratedColumn<DateTime>('user_registered', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _userActivationKeyMeta =
      const VerificationMeta('userActivationKey');
  @override
  late final GeneratedColumn<String> userActivationKey =
      GeneratedColumn<String>('user_activation_key', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userStatusMeta =
      const VerificationMeta('userStatus');
  @override
  late final GeneratedColumn<int> userStatus = GeneratedColumn<int>(
      'user_status', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _displayNameMeta =
      const VerificationMeta('displayName');
  @override
  late final GeneratedColumn<String> displayName = GeneratedColumn<String>(
      'display_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        userLogin,
        userPass,
        userNicename,
        userEmail,
        userUrl,
        userRegistered,
        userActivationKey,
        userStatus,
        displayName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_login')) {
      context.handle(_userLoginMeta,
          userLogin.isAcceptableOrUnknown(data['user_login']!, _userLoginMeta));
    }
    if (data.containsKey('user_pass')) {
      context.handle(_userPassMeta,
          userPass.isAcceptableOrUnknown(data['user_pass']!, _userPassMeta));
    }
    if (data.containsKey('user_nicename')) {
      context.handle(
          _userNicenameMeta,
          userNicename.isAcceptableOrUnknown(
              data['user_nicename']!, _userNicenameMeta));
    }
    if (data.containsKey('user_email')) {
      context.handle(_userEmailMeta,
          userEmail.isAcceptableOrUnknown(data['user_email']!, _userEmailMeta));
    }
    if (data.containsKey('user_url')) {
      context.handle(_userUrlMeta,
          userUrl.isAcceptableOrUnknown(data['user_url']!, _userUrlMeta));
    }
    if (data.containsKey('user_registered')) {
      context.handle(
          _userRegisteredMeta,
          userRegistered.isAcceptableOrUnknown(
              data['user_registered']!, _userRegisteredMeta));
    }
    if (data.containsKey('user_activation_key')) {
      context.handle(
          _userActivationKeyMeta,
          userActivationKey.isAcceptableOrUnknown(
              data['user_activation_key']!, _userActivationKeyMeta));
    }
    if (data.containsKey('user_status')) {
      context.handle(
          _userStatusMeta,
          userStatus.isAcceptableOrUnknown(
              data['user_status']!, _userStatusMeta));
    }
    if (data.containsKey('display_name')) {
      context.handle(
          _displayNameMeta,
          displayName.isAcceptableOrUnknown(
              data['display_name']!, _displayNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userLogin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_login']),
      userPass: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_pass']),
      userNicename: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_nicename']),
      userEmail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_email']),
      userUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_url']),
      userRegistered: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}user_registered']),
      userActivationKey: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}user_activation_key']),
      userStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_status']),
      displayName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}display_name']),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String? userLogin;
  final String? userPass;
  final String? userNicename;
  final String? userEmail;
  final String? userUrl;
  final DateTime? userRegistered;
  final String? userActivationKey;
  final int? userStatus;
  final String? displayName;
  const User(
      {required this.id,
      this.userLogin,
      this.userPass,
      this.userNicename,
      this.userEmail,
      this.userUrl,
      this.userRegistered,
      this.userActivationKey,
      this.userStatus,
      this.displayName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || userLogin != null) {
      map['user_login'] = Variable<String>(userLogin);
    }
    if (!nullToAbsent || userPass != null) {
      map['user_pass'] = Variable<String>(userPass);
    }
    if (!nullToAbsent || userNicename != null) {
      map['user_nicename'] = Variable<String>(userNicename);
    }
    if (!nullToAbsent || userEmail != null) {
      map['user_email'] = Variable<String>(userEmail);
    }
    if (!nullToAbsent || userUrl != null) {
      map['user_url'] = Variable<String>(userUrl);
    }
    if (!nullToAbsent || userRegistered != null) {
      map['user_registered'] = Variable<DateTime>(userRegistered);
    }
    if (!nullToAbsent || userActivationKey != null) {
      map['user_activation_key'] = Variable<String>(userActivationKey);
    }
    if (!nullToAbsent || userStatus != null) {
      map['user_status'] = Variable<int>(userStatus);
    }
    if (!nullToAbsent || displayName != null) {
      map['display_name'] = Variable<String>(displayName);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      userLogin: userLogin == null && nullToAbsent
          ? const Value.absent()
          : Value(userLogin),
      userPass: userPass == null && nullToAbsent
          ? const Value.absent()
          : Value(userPass),
      userNicename: userNicename == null && nullToAbsent
          ? const Value.absent()
          : Value(userNicename),
      userEmail: userEmail == null && nullToAbsent
          ? const Value.absent()
          : Value(userEmail),
      userUrl: userUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(userUrl),
      userRegistered: userRegistered == null && nullToAbsent
          ? const Value.absent()
          : Value(userRegistered),
      userActivationKey: userActivationKey == null && nullToAbsent
          ? const Value.absent()
          : Value(userActivationKey),
      userStatus: userStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(userStatus),
      displayName: displayName == null && nullToAbsent
          ? const Value.absent()
          : Value(displayName),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      userLogin: serializer.fromJson<String?>(json['userLogin']),
      userPass: serializer.fromJson<String?>(json['userPass']),
      userNicename: serializer.fromJson<String?>(json['userNicename']),
      userEmail: serializer.fromJson<String?>(json['userEmail']),
      userUrl: serializer.fromJson<String?>(json['userUrl']),
      userRegistered: serializer.fromJson<DateTime?>(json['userRegistered']),
      userActivationKey:
          serializer.fromJson<String?>(json['userActivationKey']),
      userStatus: serializer.fromJson<int?>(json['userStatus']),
      displayName: serializer.fromJson<String?>(json['displayName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userLogin': serializer.toJson<String?>(userLogin),
      'userPass': serializer.toJson<String?>(userPass),
      'userNicename': serializer.toJson<String?>(userNicename),
      'userEmail': serializer.toJson<String?>(userEmail),
      'userUrl': serializer.toJson<String?>(userUrl),
      'userRegistered': serializer.toJson<DateTime?>(userRegistered),
      'userActivationKey': serializer.toJson<String?>(userActivationKey),
      'userStatus': serializer.toJson<int?>(userStatus),
      'displayName': serializer.toJson<String?>(displayName),
    };
  }

  User copyWith(
          {int? id,
          Value<String?> userLogin = const Value.absent(),
          Value<String?> userPass = const Value.absent(),
          Value<String?> userNicename = const Value.absent(),
          Value<String?> userEmail = const Value.absent(),
          Value<String?> userUrl = const Value.absent(),
          Value<DateTime?> userRegistered = const Value.absent(),
          Value<String?> userActivationKey = const Value.absent(),
          Value<int?> userStatus = const Value.absent(),
          Value<String?> displayName = const Value.absent()}) =>
      User(
        id: id ?? this.id,
        userLogin: userLogin.present ? userLogin.value : this.userLogin,
        userPass: userPass.present ? userPass.value : this.userPass,
        userNicename:
            userNicename.present ? userNicename.value : this.userNicename,
        userEmail: userEmail.present ? userEmail.value : this.userEmail,
        userUrl: userUrl.present ? userUrl.value : this.userUrl,
        userRegistered:
            userRegistered.present ? userRegistered.value : this.userRegistered,
        userActivationKey: userActivationKey.present
            ? userActivationKey.value
            : this.userActivationKey,
        userStatus: userStatus.present ? userStatus.value : this.userStatus,
        displayName: displayName.present ? displayName.value : this.displayName,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('userLogin: $userLogin, ')
          ..write('userPass: $userPass, ')
          ..write('userNicename: $userNicename, ')
          ..write('userEmail: $userEmail, ')
          ..write('userUrl: $userUrl, ')
          ..write('userRegistered: $userRegistered, ')
          ..write('userActivationKey: $userActivationKey, ')
          ..write('userStatus: $userStatus, ')
          ..write('displayName: $displayName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      userLogin,
      userPass,
      userNicename,
      userEmail,
      userUrl,
      userRegistered,
      userActivationKey,
      userStatus,
      displayName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.userLogin == this.userLogin &&
          other.userPass == this.userPass &&
          other.userNicename == this.userNicename &&
          other.userEmail == this.userEmail &&
          other.userUrl == this.userUrl &&
          other.userRegistered == this.userRegistered &&
          other.userActivationKey == this.userActivationKey &&
          other.userStatus == this.userStatus &&
          other.displayName == this.displayName);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String?> userLogin;
  final Value<String?> userPass;
  final Value<String?> userNicename;
  final Value<String?> userEmail;
  final Value<String?> userUrl;
  final Value<DateTime?> userRegistered;
  final Value<String?> userActivationKey;
  final Value<int?> userStatus;
  final Value<String?> displayName;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.userLogin = const Value.absent(),
    this.userPass = const Value.absent(),
    this.userNicename = const Value.absent(),
    this.userEmail = const Value.absent(),
    this.userUrl = const Value.absent(),
    this.userRegistered = const Value.absent(),
    this.userActivationKey = const Value.absent(),
    this.userStatus = const Value.absent(),
    this.displayName = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    this.userLogin = const Value.absent(),
    this.userPass = const Value.absent(),
    this.userNicename = const Value.absent(),
    this.userEmail = const Value.absent(),
    this.userUrl = const Value.absent(),
    this.userRegistered = const Value.absent(),
    this.userActivationKey = const Value.absent(),
    this.userStatus = const Value.absent(),
    this.displayName = const Value.absent(),
  });
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? userLogin,
    Expression<String>? userPass,
    Expression<String>? userNicename,
    Expression<String>? userEmail,
    Expression<String>? userUrl,
    Expression<DateTime>? userRegistered,
    Expression<String>? userActivationKey,
    Expression<int>? userStatus,
    Expression<String>? displayName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userLogin != null) 'user_login': userLogin,
      if (userPass != null) 'user_pass': userPass,
      if (userNicename != null) 'user_nicename': userNicename,
      if (userEmail != null) 'user_email': userEmail,
      if (userUrl != null) 'user_url': userUrl,
      if (userRegistered != null) 'user_registered': userRegistered,
      if (userActivationKey != null) 'user_activation_key': userActivationKey,
      if (userStatus != null) 'user_status': userStatus,
      if (displayName != null) 'display_name': displayName,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String?>? userLogin,
      Value<String?>? userPass,
      Value<String?>? userNicename,
      Value<String?>? userEmail,
      Value<String?>? userUrl,
      Value<DateTime?>? userRegistered,
      Value<String?>? userActivationKey,
      Value<int?>? userStatus,
      Value<String?>? displayName}) {
    return UsersCompanion(
      id: id ?? this.id,
      userLogin: userLogin ?? this.userLogin,
      userPass: userPass ?? this.userPass,
      userNicename: userNicename ?? this.userNicename,
      userEmail: userEmail ?? this.userEmail,
      userUrl: userUrl ?? this.userUrl,
      userRegistered: userRegistered ?? this.userRegistered,
      userActivationKey: userActivationKey ?? this.userActivationKey,
      userStatus: userStatus ?? this.userStatus,
      displayName: displayName ?? this.displayName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userLogin.present) {
      map['user_login'] = Variable<String>(userLogin.value);
    }
    if (userPass.present) {
      map['user_pass'] = Variable<String>(userPass.value);
    }
    if (userNicename.present) {
      map['user_nicename'] = Variable<String>(userNicename.value);
    }
    if (userEmail.present) {
      map['user_email'] = Variable<String>(userEmail.value);
    }
    if (userUrl.present) {
      map['user_url'] = Variable<String>(userUrl.value);
    }
    if (userRegistered.present) {
      map['user_registered'] = Variable<DateTime>(userRegistered.value);
    }
    if (userActivationKey.present) {
      map['user_activation_key'] = Variable<String>(userActivationKey.value);
    }
    if (userStatus.present) {
      map['user_status'] = Variable<int>(userStatus.value);
    }
    if (displayName.present) {
      map['display_name'] = Variable<String>(displayName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('userLogin: $userLogin, ')
          ..write('userPass: $userPass, ')
          ..write('userNicename: $userNicename, ')
          ..write('userEmail: $userEmail, ')
          ..write('userUrl: $userUrl, ')
          ..write('userRegistered: $userRegistered, ')
          ..write('userActivationKey: $userActivationKey, ')
          ..write('userStatus: $userStatus, ')
          ..write('displayName: $displayName')
          ..write(')'))
        .toString();
  }
}

class $ATGSummariesTable extends ATGSummaries
    with TableInfo<$ATGSummariesTable, ATGSummary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ATGSummariesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _fromDateMeta =
      const VerificationMeta('fromDate');
  @override
  late final GeneratedColumn<DateTime> fromDate = GeneratedColumn<DateTime>(
      'from_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _toDateMeta = const VerificationMeta('toDate');
  @override
  late final GeneratedColumn<DateTime> toDate = GeneratedColumn<DateTime>(
      'to_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _fromTankPositionMeta =
      const VerificationMeta('fromTankPosition');
  @override
  late final GeneratedColumn<double> fromTankPosition = GeneratedColumn<double>(
      'from_tank_position', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _lastTankPositionMeta =
      const VerificationMeta('lastTankPosition');
  @override
  late final GeneratedColumn<double> lastTankPosition = GeneratedColumn<double>(
      'last_tank_position', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _changeMeta = const VerificationMeta('change');
  @override
  late final GeneratedColumn<double> change = GeneratedColumn<double>(
      'change', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  @override
  List<GeneratedColumn> get $columns =>
      [id, fromDate, toDate, fromTankPosition, lastTankPosition, change];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'a_t_g_summaries';
  @override
  VerificationContext validateIntegrity(Insertable<ATGSummary> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('from_date')) {
      context.handle(_fromDateMeta,
          fromDate.isAcceptableOrUnknown(data['from_date']!, _fromDateMeta));
    }
    if (data.containsKey('to_date')) {
      context.handle(_toDateMeta,
          toDate.isAcceptableOrUnknown(data['to_date']!, _toDateMeta));
    }
    if (data.containsKey('from_tank_position')) {
      context.handle(
          _fromTankPositionMeta,
          fromTankPosition.isAcceptableOrUnknown(
              data['from_tank_position']!, _fromTankPositionMeta));
    }
    if (data.containsKey('last_tank_position')) {
      context.handle(
          _lastTankPositionMeta,
          lastTankPosition.isAcceptableOrUnknown(
              data['last_tank_position']!, _lastTankPositionMeta));
    }
    if (data.containsKey('change')) {
      context.handle(_changeMeta,
          change.isAcceptableOrUnknown(data['change']!, _changeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ATGSummary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ATGSummary(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      fromDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}from_date']),
      toDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}to_date']),
      fromTankPosition: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}from_tank_position'])!,
      lastTankPosition: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}last_tank_position'])!,
      change: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}change'])!,
    );
  }

  @override
  $ATGSummariesTable createAlias(String alias) {
    return $ATGSummariesTable(attachedDatabase, alias);
  }
}

class ATGSummary extends DataClass implements Insertable<ATGSummary> {
  final int id;
  final DateTime? fromDate;
  final DateTime? toDate;
  final double fromTankPosition;
  final double lastTankPosition;
  final double change;
  const ATGSummary(
      {required this.id,
      this.fromDate,
      this.toDate,
      required this.fromTankPosition,
      required this.lastTankPosition,
      required this.change});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || fromDate != null) {
      map['from_date'] = Variable<DateTime>(fromDate);
    }
    if (!nullToAbsent || toDate != null) {
      map['to_date'] = Variable<DateTime>(toDate);
    }
    map['from_tank_position'] = Variable<double>(fromTankPosition);
    map['last_tank_position'] = Variable<double>(lastTankPosition);
    map['change'] = Variable<double>(change);
    return map;
  }

  ATGSummariesCompanion toCompanion(bool nullToAbsent) {
    return ATGSummariesCompanion(
      id: Value(id),
      fromDate: fromDate == null && nullToAbsent
          ? const Value.absent()
          : Value(fromDate),
      toDate:
          toDate == null && nullToAbsent ? const Value.absent() : Value(toDate),
      fromTankPosition: Value(fromTankPosition),
      lastTankPosition: Value(lastTankPosition),
      change: Value(change),
    );
  }

  factory ATGSummary.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ATGSummary(
      id: serializer.fromJson<int>(json['id']),
      fromDate: serializer.fromJson<DateTime?>(json['fromDate']),
      toDate: serializer.fromJson<DateTime?>(json['toDate']),
      fromTankPosition: serializer.fromJson<double>(json['fromTankPosition']),
      lastTankPosition: serializer.fromJson<double>(json['lastTankPosition']),
      change: serializer.fromJson<double>(json['change']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fromDate': serializer.toJson<DateTime?>(fromDate),
      'toDate': serializer.toJson<DateTime?>(toDate),
      'fromTankPosition': serializer.toJson<double>(fromTankPosition),
      'lastTankPosition': serializer.toJson<double>(lastTankPosition),
      'change': serializer.toJson<double>(change),
    };
  }

  ATGSummary copyWith(
          {int? id,
          Value<DateTime?> fromDate = const Value.absent(),
          Value<DateTime?> toDate = const Value.absent(),
          double? fromTankPosition,
          double? lastTankPosition,
          double? change}) =>
      ATGSummary(
        id: id ?? this.id,
        fromDate: fromDate.present ? fromDate.value : this.fromDate,
        toDate: toDate.present ? toDate.value : this.toDate,
        fromTankPosition: fromTankPosition ?? this.fromTankPosition,
        lastTankPosition: lastTankPosition ?? this.lastTankPosition,
        change: change ?? this.change,
      );
  @override
  String toString() {
    return (StringBuffer('ATGSummary(')
          ..write('id: $id, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate, ')
          ..write('fromTankPosition: $fromTankPosition, ')
          ..write('lastTankPosition: $lastTankPosition, ')
          ..write('change: $change')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, fromDate, toDate, fromTankPosition, lastTankPosition, change);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ATGSummary &&
          other.id == this.id &&
          other.fromDate == this.fromDate &&
          other.toDate == this.toDate &&
          other.fromTankPosition == this.fromTankPosition &&
          other.lastTankPosition == this.lastTankPosition &&
          other.change == this.change);
}

class ATGSummariesCompanion extends UpdateCompanion<ATGSummary> {
  final Value<int> id;
  final Value<DateTime?> fromDate;
  final Value<DateTime?> toDate;
  final Value<double> fromTankPosition;
  final Value<double> lastTankPosition;
  final Value<double> change;
  const ATGSummariesCompanion({
    this.id = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
    this.fromTankPosition = const Value.absent(),
    this.lastTankPosition = const Value.absent(),
    this.change = const Value.absent(),
  });
  ATGSummariesCompanion.insert({
    this.id = const Value.absent(),
    this.fromDate = const Value.absent(),
    this.toDate = const Value.absent(),
    this.fromTankPosition = const Value.absent(),
    this.lastTankPosition = const Value.absent(),
    this.change = const Value.absent(),
  });
  static Insertable<ATGSummary> custom({
    Expression<int>? id,
    Expression<DateTime>? fromDate,
    Expression<DateTime>? toDate,
    Expression<double>? fromTankPosition,
    Expression<double>? lastTankPosition,
    Expression<double>? change,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fromDate != null) 'from_date': fromDate,
      if (toDate != null) 'to_date': toDate,
      if (fromTankPosition != null) 'from_tank_position': fromTankPosition,
      if (lastTankPosition != null) 'last_tank_position': lastTankPosition,
      if (change != null) 'change': change,
    });
  }

  ATGSummariesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime?>? fromDate,
      Value<DateTime?>? toDate,
      Value<double>? fromTankPosition,
      Value<double>? lastTankPosition,
      Value<double>? change}) {
    return ATGSummariesCompanion(
      id: id ?? this.id,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      fromTankPosition: fromTankPosition ?? this.fromTankPosition,
      lastTankPosition: lastTankPosition ?? this.lastTankPosition,
      change: change ?? this.change,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fromDate.present) {
      map['from_date'] = Variable<DateTime>(fromDate.value);
    }
    if (toDate.present) {
      map['to_date'] = Variable<DateTime>(toDate.value);
    }
    if (fromTankPosition.present) {
      map['from_tank_position'] = Variable<double>(fromTankPosition.value);
    }
    if (lastTankPosition.present) {
      map['last_tank_position'] = Variable<double>(lastTankPosition.value);
    }
    if (change.present) {
      map['change'] = Variable<double>(change.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ATGSummariesCompanion(')
          ..write('id: $id, ')
          ..write('fromDate: $fromDate, ')
          ..write('toDate: $toDate, ')
          ..write('fromTankPosition: $fromTankPosition, ')
          ..write('lastTankPosition: $lastTankPosition, ')
          ..write('change: $change')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftPostgresDatabase extends GeneratedDatabase {
  _$DriftPostgresDatabase(QueryExecutor e) : super(e);
  late final $ATGsTable aTGs = $ATGsTable(this);
  late final $FlowMetersTable flowMeters = $FlowMetersTable(this);
  late final $UsersTable users = $UsersTable(this);
  late final $ATGSummariesTable aTGSummaries = $ATGSummariesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [aTGs, flowMeters, users, aTGSummaries];
}
