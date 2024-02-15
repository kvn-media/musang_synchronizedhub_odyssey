import 'dart:io';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/atg_controller.dart';
import 'package:musang_syncronizehub_odyssey/main.dart';
import 'package:path_provider/path_provider.dart';
import 'package:csv/csv.dart';

Future<void> downloadCSV(List<dynamic> dataList, String fileName) async {
  List<List<dynamic>> rows = <List<dynamic>>[
    [
      'Timestamp',
      'Alarm',
      'Level Barrel',
      'Volume Change Barrel',
      'Avg Temp Celcius',
      'Water Level Meter',
      'Product Temp Celcius',
      'Site ID'
    ],
  ];

  for (var item in dataList) {
    List<dynamic> row = [];
    row.add(item.atg_timestamp);
    row.add(item.level_barrel);
    row.add(item.volume_change_barrel);
    row.add(item.avg_temp_celcius);
    row.add(item.water_level_meter);
    row.add(item.product_temp_celcius);
    row.add(item.alarm);
    row.add(item.site_id);
    rows.add(row);
  }

  String csv = const ListToCsvConverter().convert(rows);
  final directory = await getApplicationDocumentsDirectory();
  final path = directory.path;
  final file = File('$path/$fileName.csv');
  await file.writeAsString(csv);

  // Show a notification
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
      AndroidNotificationDetails(
          'download_channel_id', 
          'Download Notifications', 
          importance: Importance.max, 
          priority: Priority.high, 
          showWhen: false);
  const NotificationDetails platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
      0, 'Download Complete', '$fileName.csv has been downloaded.', platformChannelSpecifics);
}
