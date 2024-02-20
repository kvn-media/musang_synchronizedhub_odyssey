import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_dao.dart';
import 'package:musang_syncronizehub_odyssey/dao/atg_sum_dao.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atgSummary_model.dart';
import 'package:musang_syncronizehub_odyssey/services/postgrest_service.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/dashboard/atg_model.dart';

class ATGBusinessLogic extends GetxController {
  List<ATGModel> detailsListData = [];
  List<ATGSummaryModel> sumListData = [];

  double _data = 0.0;

  double get data => _data;

  DateTimeRange? _dateRange;
  DateTimeRange? get dateRange => _dateRange;

  late List<ColumnSeries<ATGModel, String>> detailedChartData;
  late List<ColumnSeries<ATGSummaryModel, String>> sumChartData;

  final _dataController = StreamController<double>.broadcast();

  Stream<double> get dataStream => _dataController.stream;

  final AtgSumDao _sumDao = AtgSumDao(Get.find<PostgrestService>());
  final AtgDao _AtgDao = AtgDao(Get.find<PostgrestService>());

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  Future<void> fetchData(
      {DateTimeRange? dateRange, int page = 1, int recordsPerPage = 20}) async {
    if (dateRange != null) {
      sumListData = await _sumDao.read(page, recordsPerPage, dateRange: dateRange);
      detailsListData =
          await _AtgDao.read(page, recordsPerPage, dateRange: dateRange);
    } else {
      // Jika dateRange null, ambil semua data
      sumListData = await _sumDao.read(page, recordsPerPage);
      detailsListData = await _AtgDao.read(page, recordsPerPage);
    }
    // print('Fetch Data: $detailsListData');
    updateChartData();
    updateSumChartData();
    if (detailsListData.isNotEmpty) {
      var firstItem = detailsListData.first;
      if (firstItem.tank_level != null) {
        _data = firstItem.tank_level!.toDouble();
        _dataController.add(_data);
      } else {
        print('${firstItem.tank_level} is null');
      }
      if (firstItem.volume_change != null) {
        _data = firstItem.volume_change!.toDouble();
        _dataController.add(_data);
      } else {
        print('${firstItem.volume_change} is null');
      }
      if (firstItem.avg_temp_celcius != null) {
        _data = firstItem.avg_temp_celcius!.toDouble();
        _dataController.add(_data);
      } else {
        print('${firstItem.avg_temp_celcius} is null');
      }
      if (firstItem.water_level_meter != null) {
        _data = firstItem.water_level_meter!.toDouble();
        _dataController.add(_data);
      } else {
        print('${firstItem.water_level_meter} is null');
      }
      if (firstItem.product_temp_celcius != null) {
        _data = firstItem.product_temp_celcius!.toDouble();
        _dataController.add(_data);
      } else {
        print('${firstItem.product_temp_celcius} is null');
      }
      if (firstItem.product_temp_celcius != null) {
        _data = firstItem.product_temp_celcius!.toDouble();
        _dataController.add(_data);
      } else {
        print('${firstItem.product_temp_celcius} is null');
      }
    }
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

  void updateSumChartData() {
    sumChartData = [
      ColumnSeries<ATGSummaryModel, String>(
        dataSource: sumListData,
        xValueMapper: (ATGSummaryModel data, _) => DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(data.from_date ?? DateTime.now()),
        yValueMapper: (ATGSummaryModel data, _) => data.change ?? 0.0,
        name: "Berkurang",
      ),
      ColumnSeries<ATGSummaryModel, String>(
        dataSource: sumListData,
        xValueMapper: (ATGSummaryModel data, _) => DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(data.end_date ?? DateTime.now()),
        yValueMapper: (ATGSummaryModel data, _) => data.last_tank_position ?? 0.0,
        name: "Posisi akhir",
      ),
      ColumnSeries<ATGSummaryModel, String>(
        dataSource: sumListData,
        xValueMapper: (ATGSummaryModel data, _) => DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(data.from_date ?? DateTime.now()),
        yValueMapper: (ATGSummaryModel data, _) => data.from_tank_position ?? 0.0,
        name: "Posisi awal",
      ),
    ];
  }

  Map<String, num> alarmMapping = {
    'None': 1,
    'High temperature': 2,
    'High temperature cleared': 3,
  };

  void updateChartData() {
    detailedChartData = [
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.tank_level != null ? data.tank_level : 0,
        name: "Level Barrel",
      ),
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.volume_change != null ? data.volume_change : 0,
        name: "Volume Change Barrel",
      ),
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.avg_temp_celcius != null ? data.avg_temp_celcius : 0,
        name: "Average Temperature",
      ),
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.water_level_meter != null ? data.water_level_meter : 0,
        name: "Water Level Meter",
      ),
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.product_temp_celcius != null ? data.product_temp_celcius : 0,
        name: "Product Temperature",
      ),
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.alarm != null ? alarmMapping[data.alarm] : 0,
        name: "Alarm Status",
      ),
      ColumnSeries<ATGModel, String>(
        dataSource: detailsListData,
        xValueMapper: (ATGModel data, _) =>
            DateFormat('yyyy-MM-dd hh:mm:ss').format(data.atg_timestamp),
        yValueMapper: (ATGModel data, _) =>
            data.site_id != null ? data.site_id : 0,
        name: "Site ID",
      ),
    ];
  }
}
