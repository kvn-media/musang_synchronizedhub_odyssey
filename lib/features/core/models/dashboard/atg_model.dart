import 'package:flutter/material.dart';

class ATGModel {
  final DateTime timestamp;
  final VoidCallback? onPress;
  final double levelBarrel;
  final double volumeChangeBarrel;
  final double avgTempCelcius;
  final double waterLevelMeter;
  final double productTempCelcius;
  final String alarm, category;
  final int siteId;

  ATGModel({
    required this.timestamp,
    required this.levelBarrel,
    required this.volumeChangeBarrel,
    required this.avgTempCelcius,
    required this.waterLevelMeter,
    required this.productTempCelcius,
    required this.alarm,
    required this.category,
    required this.siteId,
    this.onPress,
  });

  static List<ATGModel> list = [];
}
