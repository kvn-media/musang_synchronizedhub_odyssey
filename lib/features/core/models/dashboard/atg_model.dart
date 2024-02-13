import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/helpers/parser.dart';

class ATGModel {
  final DateTime timestamp;
  final VoidCallback? onPress;
  final double levelBarrel;
  final double volumeChangeBarrel;
  final double avgTempCelcius;
  final double waterLevelMeter;
  final double productTempCelcius;
  final String? alarm;
  final int? siteId;

  ATGModel({
    required this.timestamp,
    required this.levelBarrel,
    required this.volumeChangeBarrel,
    required this.avgTempCelcius,
    required this.waterLevelMeter,
    required this.productTempCelcius,
    required this.alarm,
    required this.siteId,
    this.onPress,
  });

  factory ATGModel.fromJson(Map<String, dynamic> json) {
    return ATGModel(
      timestamp: DataParser.parseTimestamp(json['timestamp']),
      levelBarrel: DataParser.parseDouble(json['levelBarrel']) ?? 0.0,
      volumeChangeBarrel:
          DataParser.parseDouble(json['volumeChangeBarrel']) ?? 0.0,
      avgTempCelcius: DataParser.parseDouble(json['avgTempCelcius']) ?? 0.0,
      waterLevelMeter: DataParser.parseDouble(json['waterLevelMeter']) ?? 0.0,
      productTempCelcius:
          DataParser.parseDouble(json['productTempCelcius']) ?? 0.0,
      alarm: DataParser.parseString(json['alarm']),
      siteId: DataParser.parseInt(json['siteId']),
    );
  }
}
