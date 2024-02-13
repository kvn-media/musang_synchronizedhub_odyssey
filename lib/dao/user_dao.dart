import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/user_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:postgrest/postgrest.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UsersDao {
  final PostgrestClient _client;

  UsersDao(PostgrestService service) : _client = service.client;

  // Get all data fetches
  Future<List<DUserModel>> read() async {
    final List<Map<String, dynamic>> response =
        await _client.from('users').select('*');

    print('Data: ${response}');
    return response.map((item) => DUserModel.fromJson(item)).toList();
    }
}
