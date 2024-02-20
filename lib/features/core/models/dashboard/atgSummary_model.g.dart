// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atgSummary_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ATGSummaryModel> _$aTGSummaryModelSerializer =
    new _$ATGSummaryModelSerializer();

class _$ATGSummaryModelSerializer
    implements StructuredSerializer<ATGSummaryModel> {
  @override
  final Iterable<Type> types = const [ATGSummaryModel, _$ATGSummaryModel];
  @override
  final String wireName = 'ATGSummaryModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, ATGSummaryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.from_date;
    if (value != null) {
      result
        ..add('from_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.end_date;
    if (value != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.from_tank_position;
    if (value != null) {
      result
        ..add('from_tank_position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.last_tank_position;
    if (value != null) {
      result
        ..add('last_tank_position')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.change;
    if (value != null) {
      result
        ..add('change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ATGSummaryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ATGSummaryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'from_date':
          result.from_date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'end_date':
          result.end_date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'from_tank_position':
          result.from_tank_position = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'last_tank_position':
          result.last_tank_position = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'change':
          result.change = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$ATGSummaryModel extends ATGSummaryModel {
  @override
  final int id;
  @override
  final DateTime? from_date;
  @override
  final DateTime? end_date;
  @override
  final double? from_tank_position;
  @override
  final double? last_tank_position;
  @override
  final double? change;

  factory _$ATGSummaryModel([void Function(ATGSummaryModelBuilder)? updates]) =>
      (new ATGSummaryModelBuilder()..update(updates))._build();

  _$ATGSummaryModel._(
      {required this.id,
      this.from_date,
      this.end_date,
      this.from_tank_position,
      this.last_tank_position,
      this.change})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'ATGSummaryModel', 'id');
  }

  @override
  ATGSummaryModel rebuild(void Function(ATGSummaryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ATGSummaryModelBuilder toBuilder() =>
      new ATGSummaryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ATGSummaryModel &&
        id == other.id &&
        from_date == other.from_date &&
        end_date == other.end_date &&
        from_tank_position == other.from_tank_position &&
        last_tank_position == other.last_tank_position &&
        change == other.change;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, from_date.hashCode);
    _$hash = $jc(_$hash, end_date.hashCode);
    _$hash = $jc(_$hash, from_tank_position.hashCode);
    _$hash = $jc(_$hash, last_tank_position.hashCode);
    _$hash = $jc(_$hash, change.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ATGSummaryModel')
          ..add('id', id)
          ..add('from_date', from_date)
          ..add('end_date', end_date)
          ..add('from_tank_position', from_tank_position)
          ..add('last_tank_position', last_tank_position)
          ..add('change', change))
        .toString();
  }
}

class ATGSummaryModelBuilder
    implements Builder<ATGSummaryModel, ATGSummaryModelBuilder> {
  _$ATGSummaryModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _from_date;
  DateTime? get from_date => _$this._from_date;
  set from_date(DateTime? from_date) => _$this._from_date = from_date;

  DateTime? _end_date;
  DateTime? get end_date => _$this._end_date;
  set end_date(DateTime? end_date) => _$this._end_date = end_date;

  double? _from_tank_position;
  double? get from_tank_position => _$this._from_tank_position;
  set from_tank_position(double? from_tank_position) =>
      _$this._from_tank_position = from_tank_position;

  double? _last_tank_position;
  double? get last_tank_position => _$this._last_tank_position;
  set last_tank_position(double? last_tank_position) =>
      _$this._last_tank_position = last_tank_position;

  double? _change;
  double? get change => _$this._change;
  set change(double? change) => _$this._change = change;

  ATGSummaryModelBuilder();

  ATGSummaryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _from_date = $v.from_date;
      _end_date = $v.end_date;
      _from_tank_position = $v.from_tank_position;
      _last_tank_position = $v.last_tank_position;
      _change = $v.change;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ATGSummaryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ATGSummaryModel;
  }

  @override
  void update(void Function(ATGSummaryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ATGSummaryModel build() => _build();

  _$ATGSummaryModel _build() {
    final _$result = _$v ??
        new _$ATGSummaryModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ATGSummaryModel', 'id'),
            from_date: from_date,
            end_date: end_date,
            from_tank_position: from_tank_position,
            last_tank_position: last_tank_position,
            change: change);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
