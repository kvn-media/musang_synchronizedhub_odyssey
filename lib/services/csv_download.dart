import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'package:universal_platform/universal_platform.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:csv/csv.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:universal_html/html.dart' as html;

Future<void> downloadCSV({
  required List<List<String>> dataRows,
  required String fileName,
}) async {
  try {
    // Request storage permission
    if (UniversalPlatform.isAndroid) {
      PermissionStatus status = await Permission.storage.request();
      if (!status.isGranted) {
        throw Exception('Storage permission not granted');
      }
    }

    String csv = const ListToCsvConverter().convert(dataRows);

    if (UniversalPlatform.isWeb) {
      // Save CSV data using browser APIs
      var encodedCsvData = utf8.encode(csv); // Convert CSV string to bytes
      var blob = html.Blob([encodedCsvData]);
      var url = html.Url.createObjectUrlFromBlob(blob);

      // Create an anchor element to trigger download
      var anchor = html.AnchorElement(href: url);
      anchor.download = '$fileName.csv';
      anchor.click();

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

      // Check if the directory exists and create it if not
      if (!await directory.exists()) {
        await directory.create(recursive: true);
      }

      // Create a file in the directory
      File file = File('${directory.path}/$fileName.csv');

      // Write the CSV string to the file 
      await file.writeAsString(csv);

      // Check if the file exists
      if (!await file.exists()) {
        throw Exception('File not found');
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
    }
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

