import 'package:drift/drift.dart';

@DataClassName('ATGModel')
class ATGModels extends Table {
  TextColumn get timestamp => text()();
  TextColumn get alarm => text()();
  TextColumn get category => text()();
  IntColumn get levelBarrel => integer().nullable()();
  IntColumn get volumeChangeBarrel => integer().nullable()();
  IntColumn get avgTempCelcius => integer().nullable()();
  RealColumn get waterLevelMeter => real().nullable()();
  IntColumn get productTempCelcius => integer().nullable()();
}

class ATGModel extends DataClass {
  final String timestamp;
  final String alarm;
  final String category;
  final int? levelBarrel;
  final int? volumeChangeBarrel;
  final int? avgTempCelcius;
  final double? waterLevelMeter;
  final int? productTempCelcius;

  ATGModel({
    required this.timestamp,
    required this.alarm,
    required this.category,
    this.levelBarrel,
    this.volumeChangeBarrel,
    this.avgTempCelcius,
    this.waterLevelMeter,
    this.productTempCelcius,
  });

  factory ATGModel.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    return ATGModel(
      timestamp: data['${prefix}timestamp'] as String,
      alarm: data['${prefix}alarm'] as String,
      category: data['${prefix}category'] as String,
      levelBarrel: data['${prefix}levelBarrel'] as int?,
      volumeChangeBarrel: data['${prefix}volumeChangeBarrel'] as int?,
      avgTempCelcius: data['${prefix}avgTempCelcius'] as int?,
      waterLevelMeter: data['${prefix}waterLevelMeter'] as double?,
      productTempCelcius: data['${prefix}productTempCelcius'] as int?,
    );
  }

  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    return {
      'timestamp': timestamp,
      'alarm': alarm,
      'category': category,
      'levelBarrel': levelBarrel,
      'volumeChangeBarrel': volumeChangeBarrel,
      'avgTempCelcius': avgTempCelcius,
      'waterLevelMeter': waterLevelMeter,
      'productTempCelcius': productTempCelcius,
    };
  }

  @override
  String toString() {
    return 'ATGModel(timestamp: $timestamp, alarm: $alarm, category: $category, levelBarrel: $levelBarrel, volumeChangeBarrel: $volumeChangeBarrel, avgTempCelcius: $avgTempCelcius, waterLevelMeter: $waterLevelMeter, productTempCelcius: $productTempCelcius)';
  }
}





// import 'package:flutter/material.dart';

// class ATGModel {
//   String timestamp, alarm, category;
//   final VoidCallback? onPress;
//   int? levelBarrel;
//   int? volumeChangeBarrel;
//   int? avgTempCelcius;
//   double? waterLevelMeter;
//   int? productTempCelcius;

//   ATGModel(
//     this.timestamp,
//     this.alarm,
//     this.levelBarrel,
//     this.volumeChangeBarrel,
//     this.avgTempCelcius,
//     this.waterLevelMeter,
//     this.productTempCelcius,
//     this.category,
//     this.onPress,
//   );

//   static List<ATGModel> list = [
//     ATGModel(
//       '2024-01-10 10:00:00',
//       'None',
//       1000,
//       0,
//       20,
//       0.1,
//       null,
//       'Category 1',
//       null,
//     ),
//     ATGModel(
//       '2024-01-10 11:00:00',
//       'None',
//       980,
//       -20,
//       21,
//       0.1,
//       null,
//       'Category 1',
//       null,
//     ),
//     ATGModel(
//       '2024-01-10 12:00:00',
//       'High temperature',
//       950,
//       -30,
//       22,
//       0.1,
//       30,
//       'Category 1',
//       null,
//     ),
//     ATGModel(
//       '2024-01-10 13:00:00',
//       'High temperature',
//       950,
//       0,
//       22,
//       0.1,
//       30,
//       'Category 1',
//       null,
//     ),
//     ATGModel(
//       '2024-01-10 14:00:00',
//       'High temperature cleared',
//       930,
//       -20,
//       21,
//       0.1,
//       28,
//       'Category 1',
//       null,
//     ),
//   ];
// }
