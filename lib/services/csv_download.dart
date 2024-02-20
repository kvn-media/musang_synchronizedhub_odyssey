import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:file_saver/file_saver.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> downloadCSV({
  required List<dynamic> dataList,
  required String fileName,
  required List<String> headers,
  required List<dynamic> Function(dynamic) mapDataToRow,
}) async {
  try {
    // Request storage permission
    PermissionStatus status = await Permission.storage.request();
    if (!status.isGranted) {
      throw Exception('Storage permission not granted');
    }

    List<List<dynamic>> rows = [headers];

    for (var item in dataList) {
      rows.add(mapDataToRow(item));
    }

    String csv = const ListToCsvConverter().convert(rows);

    // Save the CSV string
    await FileSaver.instance.saveFile(
      name: fileName,
      bytes: Uint8List.fromList(csv.codeUnits),
      ext: 'csv',
      customMimeType: 'text/csv',
    );

    // Show a notification
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 10,
        channelKey: 'download_channel_id',
        title: 'Download Complete',
        body: '$fileName.csv has been downloaded.',
        notificationLayout: NotificationLayout.BigText,
      ),
    );
  } catch (e) {
    print('An error occurred while downloading the CSV: $e');
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: 11,
        channelKey: 'download_channel_id',
        title: 'Download Failed',
        body: 'An error occurred while downloading $fileName.csv.',
        notificationLayout: NotificationLayout.BigText,
      ),
    );
  }
}
