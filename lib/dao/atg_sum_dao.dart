import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atgSummary_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:postgrest/postgrest.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AtgSumDao {
  final PostgrestClient _client;

  AtgSumDao(PostgrestService service) : _client = service.client;

  // Get all data fetches
  Future<List<ATGSummary>> read() async {
    final List<Map<String, dynamic>> response =
        await _client.from('atg_summary').select('*');

    if (response == null) {
      print('Error: Failed to fetch data');
      return [];
    } else {
      print('Data: ${response}');
      return response.map((item) => ATGSummary.fromJson(item)).toList();
    }
  }
}
