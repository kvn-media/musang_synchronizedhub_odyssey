// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atg_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ATGModel> _$aTGModelSerializer = new _$ATGModelSerializer();

class _$ATGModelSerializer implements StructuredSerializer<ATGModel> {
  @override
  final Iterable<Type> types = const [ATGModel, _$ATGModel];
  @override
  final String wireName = 'ATGModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ATGModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'atg_timestamp',
      serializers.serialize(object.atg_timestamp,
          specifiedType: const FullType(DateTime)),
      'tank_level',
      serializers.serialize(object.tank_level,
          specifiedType: const FullType(int)),
      'volume_change',
      serializers.serialize(object.volume_change,
          specifiedType: const FullType(int)),
      'avg_temp_celcius',
      serializers.serialize(object.avg_temp_celcius,
          specifiedType: const FullType(int)),
      'water_level_meter',
      serializers.serialize(object.water_level_meter,
          specifiedType: const FullType(double)),
      'product_temp_celcius',
      serializers.serialize(object.product_temp_celcius,
          specifiedType: const FullType(int)),
      'alarm',
      serializers.serialize(object.alarm,
          specifiedType: const FullType(String)),
      'site_id',
      serializers.serialize(object.site_id, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  ATGModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ATGModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'atg_timestamp':
          result.atg_timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'tank_level':
          result.tank_level = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'volume_change':
          result.volume_change = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'avg_temp_celcius':
          result.avg_temp_celcius = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'water_level_meter':
          result.water_level_meter = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'product_temp_celcius':
          result.product_temp_celcius = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'alarm':
          result.alarm = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'site_id':
          result.site_id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ATGModel extends ATGModel {
  @override
  final DateTime atg_timestamp;
  @override
  final int tank_level;
  @override
  final int volume_change;
  @override
  final int avg_temp_celcius;
  @override
  final double water_level_meter;
  @override
  final int product_temp_celcius;
  @override
  final String alarm;
  @override
  final int site_id;

  factory _$ATGModel([void Function(ATGModelBuilder)? updates]) =>
      (new ATGModelBuilder()..update(updates))._build();

  _$ATGModel._(
      {required this.atg_timestamp,
      required this.tank_level,
      required this.volume_change,
      required this.avg_temp_celcius,
      required this.water_level_meter,
      required this.product_temp_celcius,
      required this.alarm,
      required this.site_id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        atg_timestamp, r'ATGModel', 'atg_timestamp');
    BuiltValueNullFieldError.checkNotNull(
        tank_level, r'ATGModel', 'tank_level');
    BuiltValueNullFieldError.checkNotNull(
        volume_change, r'ATGModel', 'volume_change');
    BuiltValueNullFieldError.checkNotNull(
        avg_temp_celcius, r'ATGModel', 'avg_temp_celcius');
    BuiltValueNullFieldError.checkNotNull(
        water_level_meter, r'ATGModel', 'water_level_meter');
    BuiltValueNullFieldError.checkNotNull(
        product_temp_celcius, r'ATGModel', 'product_temp_celcius');
    BuiltValueNullFieldError.checkNotNull(alarm, r'ATGModel', 'alarm');
    BuiltValueNullFieldError.checkNotNull(site_id, r'ATGModel', 'site_id');
  }

  @override
  ATGModel rebuild(void Function(ATGModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ATGModelBuilder toBuilder() => new ATGModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ATGModel &&
        atg_timestamp == other.atg_timestamp &&
        tank_level == other.tank_level &&
        volume_change == other.volume_change &&
        avg_temp_celcius == other.avg_temp_celcius &&
        water_level_meter == other.water_level_meter &&
        product_temp_celcius == other.product_temp_celcius &&
        alarm == other.alarm &&
        site_id == other.site_id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atg_timestamp.hashCode);
    _$hash = $jc(_$hash, tank_level.hashCode);
    _$hash = $jc(_$hash, volume_change.hashCode);
    _$hash = $jc(_$hash, avg_temp_celcius.hashCode);
    _$hash = $jc(_$hash, water_level_meter.hashCode);
    _$hash = $jc(_$hash, product_temp_celcius.hashCode);
    _$hash = $jc(_$hash, alarm.hashCode);
    _$hash = $jc(_$hash, site_id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ATGModel')
          ..add('atg_timestamp', atg_timestamp)
          ..add('tank_level', tank_level)
          ..add('volume_change', volume_change)
          ..add('avg_temp_celcius', avg_temp_celcius)
          ..add('water_level_meter', water_level_meter)
          ..add('product_temp_celcius', product_temp_celcius)
          ..add('alarm', alarm)
          ..add('site_id', site_id))
        .toString();
  }
}

class ATGModelBuilder implements Builder<ATGModel, ATGModelBuilder> {
  _$ATGModel? _$v;

  DateTime? _atg_timestamp;
  DateTime? get atg_timestamp => _$this._atg_timestamp;
  set atg_timestamp(DateTime? atg_timestamp) =>
      _$this._atg_timestamp = atg_timestamp;

  int? _tank_level;
  int? get tank_level => _$this._tank_level;
  set tank_level(int? tank_level) => _$this._tank_level = tank_level;

  int? _volume_change;
  int? get volume_change => _$this._volume_change;
  set volume_change(int? volume_change) =>
      _$this._volume_change = volume_change;

  int? _avg_temp_celcius;
  int? get avg_temp_celcius => _$this._avg_temp_celcius;
  set avg_temp_celcius(int? avg_temp_celcius) =>
      _$this._avg_temp_celcius = avg_temp_celcius;

  double? _water_level_meter;
  double? get water_level_meter => _$this._water_level_meter;
  set water_level_meter(double? water_level_meter) =>
      _$this._water_level_meter = water_level_meter;

  int? _product_temp_celcius;
  int? get product_temp_celcius => _$this._product_temp_celcius;
  set product_temp_celcius(int? product_temp_celcius) =>
      _$this._product_temp_celcius = product_temp_celcius;

  String? _alarm;
  String? get alarm => _$this._alarm;
  set alarm(String? alarm) => _$this._alarm = alarm;

  int? _site_id;
  int? get site_id => _$this._site_id;
  set site_id(int? site_id) => _$this._site_id = site_id;

  ATGModelBuilder();

  ATGModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atg_timestamp = $v.atg_timestamp;
      _tank_level = $v.tank_level;
      _volume_change = $v.volume_change;
      _avg_temp_celcius = $v.avg_temp_celcius;
      _water_level_meter = $v.water_level_meter;
      _product_temp_celcius = $v.product_temp_celcius;
      _alarm = $v.alarm;
      _site_id = $v.site_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ATGModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ATGModel;
  }

  @override
  void update(void Function(ATGModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ATGModel build() => _build();

  _$ATGModel _build() {
    final _$result = _$v ??
        new _$ATGModel._(
            atg_timestamp: BuiltValueNullFieldError.checkNotNull(
                atg_timestamp, r'ATGModel', 'atg_timestamp'),
            tank_level: BuiltValueNullFieldError.checkNotNull(
                tank_level, r'ATGModel', 'tank_level'),
            volume_change: BuiltValueNullFieldError.checkNotNull(
                volume_change, r'ATGModel', 'volume_change'),
            avg_temp_celcius: BuiltValueNullFieldError.checkNotNull(
                avg_temp_celcius, r'ATGModel', 'avg_temp_celcius'),
            water_level_meter: BuiltValueNullFieldError.checkNotNull(
                water_level_meter, r'ATGModel', 'water_level_meter'),
            product_temp_celcius: BuiltValueNullFieldError.checkNotNull(
                product_temp_celcius, r'ATGModel', 'product_temp_celcius'),
            alarm: BuiltValueNullFieldError.checkNotNull(
                alarm, r'ATGModel', 'alarm'),
            site_id: BuiltValueNullFieldError.checkNotNull(
                site_id, r'ATGModel', 'site_id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
