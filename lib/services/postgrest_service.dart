import 'package:postgrest/postgrest.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class PostgrestService {
  late final PostgrestClient _client;

  PostgrestService() {
    final String url = 'http://localhost:5432/musangten';
    final String username = dotenv.get('DB_USERNAME');
    final String password = dotenv.get('DB_PASSWORD');

    _client = PostgrestClient(
      Uri.parse('$url?user=$username&password=$password') as String,
    );
  }

}
