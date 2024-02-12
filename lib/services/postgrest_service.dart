import 'package:postgrest/postgrest.dart';

class PostgrestService {
  PostgrestClient? _client;

  PostgrestService();

  Future<void> initialize() async {
    final supabaseUrl = 'https://gheaaxbidfrejzbkwbvz.supabase.co';
    final supabaseKey =
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdoZWFheGJpZGZyZWp6Ymt3YnZ6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDc2NDE0ODEsImV4cCI6MjAyMzIxNzQ4MX0.Ui_3825DSs2TOa6D1CujJbSdN9OKxf6GeNd2eA0ue7Y';

    if (supabaseUrl == null || supabaseKey == null) {
      throw Exception('SUPABASE_URL or SUPABASE_KEY is not set in .env file');
    }

    _client = PostgrestClient('$supabaseUrl/rest/v1',
        headers: {'apikey': supabaseKey}, schema: 'public');
  }

  PostgrestClient get client {
    if (_client == null) {
      throw Exception('Client not initialized');
    }
    return _client!;
  }
}
