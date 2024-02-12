import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:postgrest/postgrest.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AtgDao {
  final PostgrestClient _client;

  AtgDao(PostgrestService service) : _client = service.client;

  // Get all data fetches
  Future<List<ATGModel>> read() async {
    final List<Map<String, dynamic>> response =
        await _client.from('atg').select('*');

    if (response == null) {
      print('Error: Failed to fetch data');
      return [];
    } else {
      print('Data: ${response}');
      return response.map((item) => ATGModel.fromJson(item)).toList();
    }
  }
}
