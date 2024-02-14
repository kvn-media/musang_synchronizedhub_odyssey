import 'dart:async';

import 'package:musang_syncronizehub_odyssey/dao/data_processing/process_data.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:postgrest/postgrest.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AtgDao {
  final PostgrestClient _client;

  AtgDao(PostgrestService service) : _client = service.client;

  // Get all data fetches
  Stream<List<ATGModel>> read(int page, int limit) {
    try {
      final int offset = (page - 1) * limit;
      final _dataController = StreamController<List<ATGModel>>.broadcast();

      _client
          .from('atg')
          .select(
              'atg_timestamp, level_barrel, volume_change_barrel, avg_temp_celcius, water_level_meter, product_temp_celcius, alarm, site_id')
          .order('atg_timestamp', ascending: false)
          .range(offset, offset + limit - 1)
          .then((response) {
        if (response == 200) {
          final List<Map<String, dynamic>> responseData = response;
          List<ATGModel> atgModels =
              responseData.map((item) => ATGModel.fromJson(item)).toList();
          _dataController.add(sortData(atgModels));
        } else {
          print('Error fetching data: ${response}');
          _dataController.add([]);
        }
      }).catchError((e) {
        print('Error fetching data: $e');
        _dataController.addError(e);
      });

      return _dataController.stream;
    } catch (e) {
      print('Error fetching data: $e');
      return Stream.value([]);
    }
  }
}
