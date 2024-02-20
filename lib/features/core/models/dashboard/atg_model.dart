import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'atg_model.g.dart';

abstract class ATGModel implements Built<ATGModel, ATGModelBuilder> {
  static Serializer<ATGModel> get serializer => _$aTGModelSerializer;

  DateTime get atg_timestamp;
  int get tank_level;
  int get volume_change;
  int get avg_temp_celcius;
  double get water_level_meter;
  int get product_temp_celcius;
  String get alarm;
  int get site_id;

  ATGModel._();
  factory ATGModel([void Function(ATGModelBuilder) updates]) = _$ATGModel;
}
