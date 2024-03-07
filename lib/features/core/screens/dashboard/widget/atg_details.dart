import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/data_sources/atg_data_grid_source.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_list.dart';
import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/oil_volume_animation.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:get/get.dart';
// import 'package:rive/rive.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/services/csv_download.dart';

import '../../../controllers/atg_controller.dart';
import '../../../models/dashboard/atg_model.dart';

class ATGDetailsPage extends StatefulWidget {
  @override
  State<ATGDetailsPage> createState() => _ATGDetailsPageState();
}

class _ATGDetailsPageState extends State<ATGDetailsPage> {
  final ATGBusinessLogic atgLogic =
      Get.put(ATGBusinessLogic());

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color textColor = isDarkMode ? Colors.white : Colors.black;
    Color containerColor =
        (isDarkMode ? Colors.grey[800] : Colors.white) as Color;

    return Scaffold(
      appBar: AppBar(
        title: Text('ATG Details'),
      ),
      body: FutureBuilder<List<ATGModel>>(
        future: atgLogic
            .fetchData(), // Call fetchData from your ATGBusinessLogic controller
        builder:
            (BuildContext context, AsyncSnapshot<List<ATGModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Loading state
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}'); // Error state
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  ATGDashboardData(logic: atgLogic),
                  SizedBox(
                    height: 30.0,
                  ),
                  SfDataGrid(
                    source: getATGDataSource(
                        snapshot.data ?? []), // Use your fetched data
                    columns: [
                      GridColumn(
                        columnName: 'Timestamp',
                        label: Center(child: Text('Timestamp')),
                        width: 200.0,
                      ),
                      GridColumn(
                          columnName: 'Tank Level',
                          label: Center(child: Text('Tank Level')),
                          width: 200.0),
                      GridColumn(
                          columnName: 'Volume Change',
                          label: Center(child: Text('Volume Change')),
                          width: 200.0),
                      GridColumn(
                          columnName: 'Avg Temperature Celcius',
                          label: Center(child: Text('Avg Temperature Celcius')),
                          width: 200.0),
                      GridColumn(
                          columnName: 'Water Level Meter',
                          label: Center(child: Text('Water Level Meter')),
                          width: 200.0),
                      GridColumn(
                          columnName: 'Product Temp Celcius',
                          label: Center(child: Text('Product Temp Celcius')),
                          width: 200.0),
                      GridColumn(
                          columnName: 'Alarm',
                          label: Center(child: Text('Alarm')),
                          width: 200.0),
                      GridColumn(
                          columnName: 'Site ID',
                          label: Center(child: Text('Site ID')),
                          width: 200.0),
                    ],
                    rowHeight: 60.0,
                    headerRowHeight: 70.0,
                    allowSorting: true,
                    allowMultiColumnSorting: true,
                    selectionMode: SelectionMode.single,
                    navigationMode: GridNavigationMode.cell,
                    gridLinesVisibility: GridLinesVisibility.both,
                    headerGridLinesVisibility: GridLinesVisibility.both,
                    allowPullToRefresh: true,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                ],
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        onPressed: () async {
          // Get the ATGBusinessLogic instance
          ATGBusinessLogic atgLogic = Get.find<ATGBusinessLogic>();

          // Show date range picker and fetch data for the selected date range
          await atgLogic.selectDateRange(context);

          // Get the fetched data
          List<ATGModel> fetchedData = atgLogic.detailsListData;

          // Convert fetched data to CSV format
          List<List<String>> csvData = fetchedData
              .map((item) => [
                    DateFormat('yyyy-MM-dd HH:mm:ss')
                        .format(item.atg_timestamp), // Format timestamp
                    item.tank_level.toString(),
                    item.volume_change.toString(),
                    item.avg_temp_celcius.toString(),
                    item.water_level_meter.toString(),
                    item.product_temp_celcius.toString(),
                    item.alarm.toString() ?? '',
                    item.site_id.toString(),
                  ])
              .toList();

          csvData.insert(0, [
            'Timestamp',
            'Tank Level',
            'Volume Change',
            'Avg Temperature Celcius',
            'Water Level Meter',
            'Product Temp Celcius',
            'Alarm',
            'Site ID',
          ]);

          // Download CSV with fetched data
          await downloadCSV(
            dataRows: csvData,
            fileName: 'atg_report',
          );
        },
        child: Icon(Icons.download,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.black
                : Colors.white),
      ),
    );
  }
}
