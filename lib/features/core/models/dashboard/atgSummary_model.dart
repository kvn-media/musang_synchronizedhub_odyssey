import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'atgSummary_model.g.dart';

abstract class ATGSummaryModel implements Built<ATGSummaryModel, ATGSummaryModelBuilder> {
  static Serializer<ATGSummaryModel> get serializer => _$aTGSummaryModelSerializer;

  int get id;
  DateTime? get from_date;
  DateTime? get end_date;
  double? get from_tank_position;
  double? get last_tank_position;
  double? get change;

  ATGSummaryModel._();
  factory ATGSummaryModel([void Function(ATGSummaryModelBuilder) updates]) = _$ATGSummaryModel;

}
