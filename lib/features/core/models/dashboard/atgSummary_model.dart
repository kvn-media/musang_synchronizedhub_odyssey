class ATGSummary {
  int id;
  DateTime? from_date;
  DateTime? to_date;
  double? from_tank_position;
  double? last_tank_position;
  double? change;

  ATGSummary({
    required this.id,
    this.from_date,
    this.to_date,
    this.from_tank_position,
    this.last_tank_position,
    this.change,
  });

  factory ATGSummary.fromJson(Map<String, dynamic> json) {
    return ATGSummary(
      id: json['id'] != null ? int.parse(json['id'].toString()) : 0,
      from_date: DateTime.parse(json['from_date']),
      to_date: DateTime.parse(json['to_date']),
      from_tank_position: json['from_tank_position'] != null
          ? double.parse(json['from_tank_position'].toString())
          : 0.0,
      last_tank_position: json['last_tank_position'] != null
          ? double.parse(json['last_tank_position'].toString())
          : 0.0,
      change: json['change'] != null
          ? double.parse(json['change'].toString())
          : 0.0,
    );
  }
}
