import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_dao.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_sum_dao.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/dashboard/atg_model.dart';

class ATGBusinessLogic extends GetxController {
  late List<ATGModel> detailsListData = [];

  final ZoomPanBehavior zoomPanBehavior = ZoomPanBehavior(
    enablePanning: true,
    enablePinching: true,
    zoomMode: ZoomMode.x,
    enableMouseWheelZooming: true,
    enableDoubleTapZooming: true,
  );

  DateTimeRange? _dateRange;
  DateTimeRange? get dateRange => _dateRange;

  late List<FastLineSeries<ATGModel, DateTime>> detailedChartData = [];

  final _dataController = StreamController<double>.broadcast();

  Stream<double> get dataStream => _dataController.stream;

  final AtgSumDao _sumDao = AtgSumDao(Get.find<PostgrestService>());
  final AtgDao _AtgDao = AtgDao(Get.find<PostgrestService>());

  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
    setInitialZoomLevel();
  }

  void setInitialZoomLevel() {
    double zoomLevel =
        detailedChartData.length > 7 ? 7 / detailedChartData.length : 1;
  }

  DateTime getLatestTimestamp() {
    if (detailsListData.isNotEmpty) {
      return detailsListData.first.atg_timestamp;
    } else {
      // Handle the case when there's no data
      return DateTime.now();
    }
  }

  Future<List<ATGModel>> fetchData(
      {DateTimeRange? dateRange, int page = 1, int recordsPerPage = 20}) async {
    isLoading.value = true;
    if (dateRange != null) {
      detailsListData =
          await _AtgDao.read(page, recordsPerPage, dateRange: dateRange);
    } else {
      // If dateRange is null, get all data
      detailsListData = await _AtgDao.read(page, recordsPerPage);
    }

    // Initialize chart data
    detailedChartData = createDetailedChartData(detailsListData);
    // sumChartData = createSumChartData(sumListData);

    // Only update the chart data with the latest row
    if (detailsListData.isNotEmpty) {
      detailedChartData = createDetailedChartData(detailsListData);
      // Emit the latest tank level value
      _dataController.add(detailsListData.first.tank_level.toDouble());
    }

    isLoading.value = false;
    return detailsListData;
  }

  Future<void> selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (picked != null && picked != _dateRange) {
      _dateRange = picked;
      fetchData(
          dateRange: _dateRange); // Call fetchData with the new date range
      update(); // Notify listeners about the change
    }
  }

  void dispose() {
    _dataController.close();
    super.dispose();
  }

  Map<String, num> alarmMapping = {
    'None': 1,
    'High temperature': 2,
    'High temperature cleared': 3,
  };

  List<FastLineSeries<ATGModel, DateTime>> createDetailedChartData(
      List<ATGModel> data) {
    // Your logic here to convert data into FastLineSeries
    return [
      FastLineSeries<ATGModel, DateTime>(
        dataSource: data,
        xValueMapper: (ATGModel data, _) => data.atg_timestamp,
        yValueMapper: (ATGModel data, _) =>
            data.tank_level != null ? data.tank_level : 0,
        name: "Tank Level",
        width: 5,
      ),
      // FastLineSeries<ATGModel, DateTime>(
      //   dataSource: data,
      //   xValueMapper: (ATGModel data, _) => data.atg_timestamp,
      //   yValueMapper: (ATGModel data, _) =>
      //       data.volume_change != null ? data.volume_change : 0,
      //   name: "Volume Change",
      //   width: 5,
      // ),
      // FastLineSeries<ATGModel, DateTime>(
      //   dataSource: detailsListData,
      //   xValueMapper: (ATGModel data, _) => data.atg_timestamp,
      //   yValueMapper: (ATGModel data, _) =>
      //       data.avg_temp_celcius != null ? data.avg_temp_celcius : 0,
      //   name: "Average Temperature",
      //   width: 5,
      // ),
      // FastLineSeries<ATGModel, DateTime>(
      //   dataSource: detailsListData,
      //   xValueMapper: (ATGModel data, _) => data.atg_timestamp,
      //   yValueMapper: (ATGModel data, _) =>
      //       data.water_level_meter != null ? data.water_level_meter : 0,
      //   name: "Water Level Meter",
      //   width: 5,
      // ),
      // FastLineSeries<ATGModel, DateTime>(
      //   dataSource: detailsListData,
      //   xValueMapper: (ATGModel data, _) => data.atg_timestamp,
      //   yValueMapper: (ATGModel data, _) =>
      //       data.product_temp_celcius != null ? data.product_temp_celcius : 0,
      //   name: "Product Temperature",
      //   width: 5,
      // ),
      // FastLineSeries<ATGModel, DateTime>(
      //   dataSource: detailsListData,
      //   xValueMapper: (ATGModel data, _) => data.atg_timestamp,
      //   yValueMapper: (ATGModel data, _) =>
      //       data.alarm != null ? alarmMapping[data.alarm] : 0,
      //   name: "Alarm Status",
      //   width: 5,
      // ),
      // FastLineSeries<ATGModel, DateTime>(
      //   dataSource: detailsListData,
      //   xValueMapper: (ATGModel data, _) => data.atg_timestamp,
      //   yValueMapper: (ATGModel data, _) =>
      //       data.site_id != null ? data.site_id : 0,
      //   name: "Site ID",
      //   width: 5,
      // ),
    ];
  }
}
