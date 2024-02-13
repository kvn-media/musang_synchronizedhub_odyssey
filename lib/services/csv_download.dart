import 'dart:io';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/atg_controller.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';

Future<void> downloadCSV() async {
  final ATGBusinessLogic atgLogic = Get.put(ATGBusinessLogic());

  List<List<dynamic>> rows = <List<dynamic>>[];
  rows.add([
    'Timestamp',
    'Alarm',
    'Level Barrel',
    'Volume Change Barrel',
    'Avg Temp Celcius',
    'Water Level Meter',
    'Product Temp Celcius'
  ]);

  for (var item in atgLogic.detailsListData) {
    List<dynamic> row = [];
    row.add(item.timestamp);
    row.add(item.levelBarrel);
    row.add(item.volumeChangeBarrel);
    row.add(item.avgTempCelcius);
    row.add(item.waterLevelMeter);
    row.add(item.productTempCelcius);
    row.add(item.alarm);
    row.add(item.siteId);
    rows.add(row);
  }

  String csv = const ListToCsvConverter().convert(rows);
  final directory = await getApplicationDocumentsDirectory();
  final path = directory.path;
  final file = File('$path/atg_details_report.csv');
  await file.writeAsString(csv);
}
