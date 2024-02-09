import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ATGBusinessLogic {
  List<ATGModel> listData = [];

  late List<StackedBarSeries<ATGModel, String>> detailedChartData;

  // final List<StackedBarSeries<ATGSummary, String>> summaryChartData = [];
  // final DriftPostgresDatabase database;

  // ATGBusinessLogic(this.database) {
  //   initializeChartData();
  // }

  // Future<void> insertData() async {
  //   var atgs = [
  //     ATGsCompanion(
  //       atgTimestamp: Value(DateTime.now().millisecondsSinceEpoch),
  //       levelBarrel: Value(1000.0),
  //       volumeChangeBarrel: Value(0.0),
  //       avgTempCelcius: Value(20.0),
  //       waterLevelMeter: Value(0.1),
  //       productTempCelcius: Value(0.0),
  //       alarm: Value('None'),
  //       siteId: Value(1),
  //     ),
  //   ];

  //   await createMultipleATGs(atgs);
  // }

  // Create
  // Future<void> createATG(ATGsCompanion atg) async {
  //   await database.into(database.aTGs).insert(atg);
  // }

  // // Create Multiple
  // Future<void> createMultipleATGs(List<ATGsCompanion> insertData) async {
  //   for (var atg in insertData) {
  //     await database.into(database.aTGs).insert(atg);
  //   }
  // }

  // // Read
  // Future<List<ATG>> getAllATGs() async {
  //   return await database.select(database.aTGs).get();
  // }

  // // Update
  // Future<void> updateATG(ATG atg) async {
  //   await database.update(database.aTGs).replace(atg);
  // }

  // // Delete
  // Future<void> deleteATG(ATG atg) async {
  //   await database.delete(database.aTGs).delete(atg);
  // }

  void initializeChartData() {
    updateChartData();
  }

  Future<void> updateData() async {
    // List<ATG> atgs = await getAllATGs();
    // listData = atgs.map((atg) => ATGModel.fromATG(atg)).toList();
    updateChartData();
  }

  void updateChartData() {
    detailedChartData = [
      StackedBarSeries<ATGModel, String>(
        dataSource: listData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.levelBarrel != null ? data.levelBarrel! : 0,
        name: "Level Barrel",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: listData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.volumeChangeBarrel != null ? data.volumeChangeBarrel! : 0,
        name: "Volume Change Barrel",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: listData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.avgTempCelcius != null ? data.avgTempCelcius! : 0,
        name: "Average Temperature",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: listData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.waterLevelMeter != null ? data.waterLevelMeter! : 0,
        name: "Water Level Meter",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: listData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.productTempCelcius != null ? data.productTempCelcius! : 0,
        name: "Product Temperature",
      ),
    ];
  }
}
