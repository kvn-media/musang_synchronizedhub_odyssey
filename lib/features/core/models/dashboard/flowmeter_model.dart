import 'package:flutter/material.dart';

class FlowmeterModel {
  String timestamp, image;
  final VoidCallback? onPress;
  int? flowRateGpm;
  int? totalFlowGalon;
  int? tempFahrenheit;
  int? pressurePsi;
  double? densitylbGal;
  int? viscosityCp;
  int? apiGravity;

  FlowmeterModel(
    this.timestamp,
    this.image,
    this.flowRateGpm,
    this.totalFlowGalon,
    this.tempFahrenheit,
    this.pressurePsi,
    this.densitylbGal,
    this.viscosityCp,
    this.apiGravity,
    this.onPress,
  );

  static List<FlowmeterModel> list = [
    FlowmeterModel(
      '2024-01-10 10:00:00',
      'assets/images/abstract-fluid-shapes.svg',
      50,
      1000,
      70,
      100,
      0.75,
      50,
      30,
      null,
    ),
    FlowmeterModel(
      '2024-01-10 10:15:00',
      'assets/images/abstract-fluid-shapes.svg',
      52,
      1052,
      72,
      102,
      0.75,
      51,
      30,
      null,
    ),
    FlowmeterModel(
      '2024-01-10 10:30:00',
      'assets/images/abstract-fluid-shapes.svg',
      48,
      1100,
      74,
      101,
      0.76,
      52,
      30,
      null,
    ),
  ];
}
