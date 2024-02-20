import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/atg_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class _ATGDataGridSource extends DataGridSource {
  _ATGDataGridSource(this.listData);

  final List<ATGModel> listData;

  @override
  List<DataGridRow> get rows => listData.map((data) {
        return DataGridRow(cells: [
          DataGridCell(columnName: 'Timestamp', value: data.atg_timestamp),
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

DataGridSource getATGDataSource(List<ATGModel> listData) {
  return _ATGDataGridSource(listData);
}
