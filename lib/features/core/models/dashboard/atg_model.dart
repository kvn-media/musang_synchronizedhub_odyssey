import 'package:flutter/material.dart';

class ATGModel {
  String timestamp, alarm;
  final VoidCallback? onPress;
  int? levelBarrel;
  int? volumeChangeBarrel;
  int? avgTempCelcius;
  double? waterLevelMeter;
  int? productTempCelcius;

  ATGModel(
    this.timestamp,
    this.alarm,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.onPress,
  );

  static List<ATGModel> list = [
    ATGModel(
      '2024-01-10 10:00:00',
      'None',
      1000,
      0,
      20,
      0.1,
      null,
      null,
    ),
    ATGModel(
      '2024-01-10 11:00:00',
      'None',
      980,
      -20,
      21,
      0.1,
      null,
      null,
    ),
    ATGModel(
      '2024-01-10 12:00:00',
      'High temperature',
      950,
      -30,
      22,
      0.1,
      30,
      null,
    ),
    ATGModel(
      '2024-01-10 13:00:00',
      'High temperature',
      950,
      0,
      22,
      0.1,
      30,
      null,
    ),
    ATGModel(
      '2024-01-10 14:00:00',
      'High temperature cleared',
      930,
      -20,
      21,
      0.1,
      28,
      null,
    ),
  ];
}
