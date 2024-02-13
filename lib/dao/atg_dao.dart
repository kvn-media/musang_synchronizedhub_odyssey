import 'package:musang_syncronizehub_odyssey/dao/data_processing/process_data.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:postgrest/postgrest.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AtgDao {
  final PostgrestClient _client;

  AtgDao(PostgrestService service) : _client = service.client;

  // Get all data fetches
  Future<List<ATGModel>> read(int page, int limit) async {
    final int offset = (page - 1) * limit;
    final List<Map<String, dynamic>> response = await _client
        .from('atg')
        .select(
            'atg_timestamp, level_barrel, volume_change_barrel, avg_temp_celcius, water_level_meter, product_temp_celcius, alarm, site_id')
        .order('atg_timestamp', ascending: false)
        .range(offset, offset + limit - 1);

    print('Data: ${response}');
    List<ATGModel> data =
        response.map((item) => ATGModel.fromJson(item)).toList();
    return sortData(data);
    }
}
