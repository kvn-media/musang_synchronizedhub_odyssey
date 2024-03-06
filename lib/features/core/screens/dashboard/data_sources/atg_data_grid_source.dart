import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

enum DisplayMode {
  all,
  latest,
}

class _ATGDataGridSource extends DataGridSource {
  _ATGDataGridSource(this.listData, {this.displayMode = DisplayMode.all});

  final List<ATGModel> listData;
  final DisplayMode displayMode;

  @override
  List<DataGridRow> get rows {
    switch (displayMode) {
      case DisplayMode.all:
        return _getAllRows();
      case DisplayMode.latest:
        return _getLatestRow();
      default:
        return [];
    }
  }

  List<DataGridRow> _getAllRows() {
    return listData.map((data) {
      return DataGridRow(cells: [
        DataGridCell(
            columnName: 'Timestamp',
            value:
                DateFormat('yyyy-MM-dd HH:mm:ss').format(data.atg_timestamp)),
        DataGridCell(columnName: 'Tank Level', value: data.tank_level),
        DataGridCell(columnName: 'Volume Change', value: data.volume_change),
        DataGridCell(
            columnName: 'Average Temperature Celcius',
            value: data.avg_temp_celcius),
        DataGridCell(
            columnName: 'Water Level Meter', value: data.water_level_meter),
        DataGridCell(
            columnName: 'Product Temp Celcius',
            value: data.product_temp_celcius),
        DataGridCell(columnName: 'Alarm', value: data.alarm),
        DataGridCell(columnName: 'Site ID', value: data.site_id),
      ]);
    }).toList();
  }

  List<DataGridRow> _getLatestRow() {
    if (listData.isNotEmpty) {
      final ATGModel latestData = listData.last;
      return [
        DataGridRow(cells: [
          // DataGridCell(
          //     columnName: 'Timestamp',
          //     value:
          //         DateFormat('yyyy-MM-dd HH:mm:ss').format(latestData.atg_timestamp)),
          DataGridCell(columnName: 'Tank Level', value: latestData.tank_level),
          DataGridCell(
              columnName: 'Volume Change', value: latestData.volume_change),
          DataGridCell(
              columnName: 'Average Temperature Celcius',
              value: latestData.avg_temp_celcius),
          DataGridCell(
              columnName: 'Water Level Meter',
              value: latestData.water_level_meter),
          DataGridCell(
              columnName: 'Product Temp Celcius',
              value: latestData.product_temp_celcius),
          // DataGridCell(columnName: 'Alarm', value: latestData.alarm),
          DataGridCell(columnName: 'Site ID', value: latestData.site_id),
        ])
      ];
    } else {
      return [];
    }
  }

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    return DataGridRowAdapter(
      cells: row.getCells().map((dataCell) {
        return Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(8.0),
          child: Text(dataCell.value.toString()),
        );
      }).toList(),
    );
  }
}

DataGridSource getATGDataSource(List<ATGModel> listData,
    {DisplayMode mode = DisplayMode.all}) {
  return _ATGDataGridSource(listData, displayMode: mode);
}
