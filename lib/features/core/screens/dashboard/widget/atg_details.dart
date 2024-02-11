import 'dart:io';

import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/oilTank.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

import '../../../controllers/atg_controller.dart';

class ATGDetailsPage extends StatelessWidget {
  final ATGBusinessLogic atgLogic = Get.put(ATGBusinessLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ATG Details'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20.0,
          ),
          GetBuilder<ATGBusinessLogic>(
            builder: (controller) {
              double? data = controller.data;
              if (data != null) {
                return DataAnimateWidget(level: data);
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
          const SizedBox(
            height: 25.0,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columnSpacing: 20.0,
              headingRowHeight: 60.0,
              dataRowHeight: 50.0,
              headingTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              dataTextStyle: TextStyle(
                fontSize: 14.0,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade800,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              columns: const [
                DataColumn(label: Text('Timestamp')),
                DataColumn(label: Text('Alarm')),
                DataColumn(label: Text('Level Barrel')),
                DataColumn(label: Text('Volume Change Barrel')),
                DataColumn(label: Text('Avg Temp Celcius')),
                DataColumn(label: Text('Water Level Meter')),
                DataColumn(label: Text('Product Temp Celcius')),
              ],
              rows: atgLogic.detailsListData.map((item) {
                return DataRow(
                  cells: [
                    DataCell(Text(DateFormat('yyyy-MM-dd hh:mm:ss')
                        .format(item.timestamp))),
                    DataCell(Text(item.alarm)),
                    DataCell(Text(item.levelBarrel?.toString() ?? '')),
                    DataCell(Text(item.volumeChangeBarrel?.toString() ?? '')),
                    DataCell(Text(item.avgTempCelcius?.toString() ?? '')),
                    DataCell(Text(item.waterLevelMeter?.toString() ?? '')),
                    DataCell(Text(item.productTempCelcius?.toString() ?? '')),
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _downloadCSV,
      //   child: Icon(Icons.download),
      // ),
    );
  }

  // void _downloadCSV() async {
  //   List<ATG> atgs = await atgLogic.getAllATGs();
  //   List<ATGModel> listData = atgs.map((atg) => ATGModel.fromATG(atg)).toList();

  //   List<List<dynamic>> rows = listData.map((item) {
  //     return [
  //       DateFormat('yyyy-MM-dd').format(item.timestamp),
  //       item.alarm,
  //       item.levelBarrel?.toString() ?? '',
  //       item.volumeChangeBarrel?.toString() ?? '',
  //       item.avgTempCelcius?.toString() ?? '',
  //       item.waterLevelMeter?.toString() ?? '',
  //       item.productTempCelcius?.toString() ?? '',
  //     ];
  //   }).toList();

  //   String csv = const ListToCsvConverter().convert(rows);

  //   final directory = await getApplicationDocumentsDirectory();
  //   final path = directory.path;
  //   final file = File('$path/export.csv');

  //   await file.writeAsString(csv);

  //   Share.shareFiles([file.path], text: 'Your CSV file');
  // }
}
