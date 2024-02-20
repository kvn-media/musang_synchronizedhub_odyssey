import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atgSummary_model.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:musang_syncronizehub_odyssey/helpers/datetime_serializer.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ATGModel,
  ATGSummaryModel,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(DateTimeSerializer())) // Add this line
    .build();
