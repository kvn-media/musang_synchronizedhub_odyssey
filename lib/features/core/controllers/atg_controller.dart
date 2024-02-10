import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/dashboard/atg_model.dart';

class ATGBusinessLogic {
  List<ATGModel> listData = [];

  late List<StackedBarSeries<ATGModel, String>> detailedChartData;

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