import 'dart:async';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/dashboard/atg_model.dart';

class ATGBusinessLogic extends GetxController {
  double _data = 0.0;

  double get data => _data;

  List<ATGModel> listData = [];

  late List<StackedBarSeries<ATGModel, String>> detailedChartData;

  final _dataController = StreamController<double>.broadcast();

  Stream<double> get dataStream => _dataController.stream;

  void initializeChartData() {
    updateChartData();
  }

  Future<void> updateData() async {
    updateChartData();
    if (listData.isNotEmpty) {
      _dataController.add(listData.first.levelBarrel ?? 0);
    }
  }

  void dispose() {
    _dataController.close();
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
