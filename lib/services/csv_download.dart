import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:csv/csv.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:universal_html/html.dart' as html;

Future<void> downloadCSV<T>({
  required List<T> dataList,
  required String fileName,
  required List<String> Function(T) mapDataToRow,
}) async {
  try {
    // Request storage permission
    if (UniversalPlatform.isAndroid) {
      PermissionStatus status = await Permission.storage.request();
      if (!status.isGranted) {
        throw Exception('Storage permission not granted');
      }
    }

    List<List<String>> rows = dataList.map(mapDataToRow).toList();

    String csv = const ListToCsvConverter().convert(rows);

    if (UniversalPlatform.isWeb) {
      // Prepare
      final bytes = utf8.encode(csv);
      final blob = html.Blob([bytes]);

      // Download
      final url = html.Url.createObjectUrlFromBlob(blob);
      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', '$fileName.csv')
        ..click();

      // Cleanup
      html.Url.revokeObjectUrl(url);
    } else {
      Directory? directory;

      if (UniversalPlatform.isAndroid) {
        directory = await getExternalStorageDirectory();
      } else if (UniversalPlatform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else if (UniversalPlatform.isWindows || UniversalPlatform.isLinux) {
        directory = await getDownloadsDirectory();
      }

      if (directory == null) {
        throw Exception('Could not access the directory');
      }

      // Create a file in the directory
      File file = File('${directory.path}/$fileName.csv');

      // Write the CSV string to the file
      await file.writeAsString(csv);
    }

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
