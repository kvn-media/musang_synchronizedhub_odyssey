import 'package:postgrest/postgrest.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PostgrestService {
  PostgrestClient? _client;

  PostgrestService() {
    initialize();
  }

  Future<void> initialize() async {
    await dotenv.load();
    _client = PostgrestClient(dotenv.env['SUPABASE_URL']!);
  }

  PostgrestClient get client {
    if (_client == null) {
      throw Exception('Client not initialized');
    }
    return _client!;
  }

  // You can add methods here to interact with your Supabase database via PostgREST
}
