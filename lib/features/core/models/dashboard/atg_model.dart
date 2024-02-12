import 'package:flutter/material.dart';

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
      timestamp: json['timestamp'] != null
          ? DateTime.parse(json['timestamp'])
          : DateTime.now(),
      levelBarrel: json['levelBarrel'] != null
          ? double.parse(json['levelBarrel'].toString())
          : 0.0,
      volumeChangeBarrel: json['volumeChangeBarrel'] != null
          ? double.parse(json['volumeChangeBarrel'].toString())
          : 0.0,
      avgTempCelcius: json['avgTempCelcius'] != null
          ? double.parse(json['avgTempCelcius'].toString())
          : 0.0,
      waterLevelMeter: json['waterLevelMeter'] != null
          ? double.parse(json['waterLevelMeter'].toString())
          : 0.0,
      productTempCelcius: json['productTempCelcius'] != null
          ? double.parse(json['productTempCelcius'].toString())
          : 0.0,
      alarm: json['alarm'] != null ? json['alarm'].toString() : '',
      siteId: json['siteId'] != null ? int.parse(json['siteId'].toString()) : 0,
    );
  }
}
