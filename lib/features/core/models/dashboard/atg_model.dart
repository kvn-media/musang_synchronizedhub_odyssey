import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/helpers/parser.dart';

class ATGModel {
  final DateTime timestamp;
  final VoidCallback? onPress;
  final int? levelBarrel;
  final int? volumeChangeBarrel;
  final int? avgTempCelcius;
  final double? waterLevelMeter;
  final int? productTempCelcius;
  final String? alarm;
  final int? siteId;

  ATGModel({
    required this.timestamp,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
    this.alarm,
    this.siteId,
    this.onPress,
  });

  factory ATGModel.fromJson(Map<String, dynamic> json) {
    return ATGModel(
      timestamp: DataParser.parseTimestamp(json['timestamp']),
      levelBarrel: DataParser.parseInt(json['levelBarrel']),
      volumeChangeBarrel: DataParser.parseInt(json['volumeChangeBarrel']),
      avgTempCelcius: DataParser.parseInt(json['avgTempCelcius']),
      waterLevelMeter: DataParser.parseDouble(json['waterLevelMeter']),
      productTempCelcius: DataParser.parseInt(json['productTempCelcius']),
      alarm: DataParser.parseString(json['alarm']),
      siteId: DataParser.parseInt(json['siteId']),
    );
  }
}
