import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/data_sources/atg_data_grid_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/oilTank.dart';
import 'package:musang_syncronizehub_odyssey/services/csv_download.dart';

import '../../../controllers/atg_controller.dart';
import '../../../models/dashboard/atg_model.dart';

class ATGDetailsPage extends StatelessWidget {
  final ATGBusinessLogic atgLogic = Get.put(ATGBusinessLogic());

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // SizedBox(
            //   height: 20.0,
            // ),
            // GetBuilder<ATGBusinessLogic>(
            //   builder: (controller) {
            //     double? data = controller.data;
            //     return DataAnimateWidget(level: data);
            //   },
            // ),
            SizedBox(
              height: 30.0,
            ),
            SfDataGrid(
              source: getATGDataSource(atgLogic.detailsListData),
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
              allowSwiping: true,
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Get the ATGBusinessLogic instance
          ATGBusinessLogic atgLogic = Get.find<ATGBusinessLogic>();

          // Show date range picker and fetch data for the selected date range
          await atgLogic.selectDateRange(context);

          // Get the filtered data
          List<ATGModel> filteredData = atgLogic.detailsListData;

          // Download CSV with filtered data
          await downloadCSV(
            dataList: filteredData,
            fileName: 'atg_report',
            headers: [
              'Timestamp',
              'Tank Level',
              'Volume Change Barrel',
              'Avg Temp Celcius',
              'Water Level Meter',
              'Product Temp Celcius',
              'Alarm',
              'Site ID'
            ],
            mapDataToRow: (item) => [
              DateFormat('yyyy-MM-dd hh:mm:ss').format(item.atg_timestamp),
              item.tank_level.toString(),
              item.volume_change.toString(),
              item.avg_temp_celcius.toString(),
              item.water_level_meter.toString(),
              item.product_temp_celcius.toString(),
              item.alarm?.toString(),
              item.site_id.toString(),
            ],
          );
        },
        child: Icon(Icons.download),
      ),
    );
  }
}
