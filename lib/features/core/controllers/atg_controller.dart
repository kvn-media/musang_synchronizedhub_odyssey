import 'dart:async';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_dao.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_sum_dao.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atgSummary_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/dashboard/atg_model.dart';

class ATGBusinessLogic extends GetxController {
  double _data = 0.0;

  double get data => _data;

  List<ATGModel> detailsListData = [];
  List<ATGSummary> sumListData = [];

  late List<StackedBarSeries<ATGModel, String>> detailedChartData;
  late List<ColumnSeries<ATGSummary, String>> sumChartData;

  final _dataController = StreamController<double>.broadcast();

  Stream<double> get dataStream => _dataController.stream;

  final AtgSumDao _sumDao = AtgSumDao(Get.find<PostgrestService>());
  final AtgDao _AtgDao = AtgDao(Get.find<PostgrestService>());

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData() async {
    sumListData = await _sumDao.read();
    detailsListData = await _AtgDao.read(1, 20);
    print('Fetch Data: $detailsListData');
    updateChartData();
    updateSumChartData();
    if (detailsListData.isNotEmpty) {
      var firstItem = detailsListData.first;
      if (firstItem.levelBarrel != null) {
        _dataController.add(firstItem.levelBarrel);
      } else {
        print('levelBarrel is null');
      }
      if (firstItem.volumeChangeBarrel != null) {
        _dataController.add(firstItem.volumeChangeBarrel);
      } else {
        print('volumeChangeBarrel is null');
      }
      if (firstItem.avgTempCelcius != null) {
        _dataController.add(firstItem.avgTempCelcius);
      } else {
        print('avgTempCelcius is null');
      }
      if (firstItem.waterLevelMeter != null) {
        _dataController.add(firstItem.waterLevelMeter);
      } else {
        print('waterLevelMeter is null');
      }
      if (firstItem.productTempCelcius != null) {
        _dataController.add(firstItem.productTempCelcius);
      } else {
        print('productTempCelcius is null');
      }
    }
  }

  void dispose() {
    _dataController.close();
    super.dispose();
  }

  void updateChartData() {
    detailedChartData = [
      StackedBarSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.levelBarrel != null ? data.levelBarrel : 0,
        name: "Level Barrel",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.volumeChangeBarrel != null ? data.volumeChangeBarrel : 0,
        name: "Volume Change Barrel",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.avgTempCelcius != null ? data.avgTempCelcius : 0,
        name: "Average Temperature",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.waterLevelMeter != null ? data.waterLevelMeter : 0,
        name: "Water Level Meter",
      ),
      StackedBarSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.productTempCelcius != null ? data.productTempCelcius : 0,
        name: "Product Temperature",
      ),
    ];
  }

  void updateSumChartData() {
    sumChartData = [
      ColumnSeries<ATGSummary, String>(
        dataSource: sumListData,
        xValueMapper: (ATGSummary data, _) => DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(data.from_date ?? DateTime.now()),
        yValueMapper: (ATGSummary data, _) => data.change ?? 0.0,
        name: "Berkurang",
      ),
      ColumnSeries<ATGSummary, String>(
        dataSource: sumListData,
        xValueMapper: (ATGSummary data, _) => DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(data.to_date ?? DateTime.now()),
        yValueMapper: (ATGSummary data, _) => data.last_tank_position ?? 0.0,
        name: "Posisi akhir",
      ),
      ColumnSeries<ATGSummary, String>(
        dataSource: sumListData,
        xValueMapper: (ATGSummary data, _) => DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(data.from_date ?? DateTime.now()),
        yValueMapper: (ATGSummary data, _) => data.from_tank_position ?? 0.0,
        name: "Posisi awal",
      ),
    ];
  }
}
