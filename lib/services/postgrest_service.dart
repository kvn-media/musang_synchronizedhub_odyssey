import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:postgrest/postgrest.dart';

class PostgrestService {
  PostgrestClient? _client;

  PostgrestService._();

  static Future<PostgrestService> create() async {
    var service = PostgrestService._();
    await service.initialize();
    return service;
  }

  Future<void> initialize() async {
    final supabaseUrl = dotenv.env['SUPABASE_URL'];
    final supabaseKey = dotenv.env['SUPABASE_KEY'];

    if (supabaseUrl == null || supabaseKey == null) {
      throw Exception('SUPABASE_URL or SUPABASE_KEY is not set in .env file');
    }

    _client = PostgrestClient('$supabaseUrl',
        headers: {'apikey': supabaseKey}, schema: 'public');
  }

  PostgrestClient get client {
    if (_client == null) {
      throw Exception('Client not initialized');
    }
    return _client!;
  }
}
