// Access the ATGModel class.
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
}
