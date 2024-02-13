class DataParser {
  static DateTime parseTimestamp(dynamic value) {
    if (value is String) {
      try {
        return DateTime.parse(value);
      } catch (e) {
        print('Could not parse timestamp: $value. Defaulting to now.');
      }
    }
    print('Timestamp was not a string: $value. Defaulting to now.');
    return DateTime.now();
  }

  static double parseDouble(dynamic value) {
    if (value is num) {
      return value.toDouble();
    }
    print('Invalid number: $value. Defaulting to 0.0.');
    return 0.0;
  }

  static String parseString(dynamic value) {
    if (value is String) {
      return value;
    }
    print('Invalid string: $value. Defaulting to empty string.');
    return '';
  }

  static int parseInt(dynamic value) {
    if (value is int) {
      return value;
    }
    print('Invalid integer: $value. Defaulting to 0.');
    return 0;
  }
}