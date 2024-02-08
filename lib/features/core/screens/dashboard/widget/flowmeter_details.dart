import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/models/dashboard/flowmeter_model.dart';

class FlowmeterDetailsPage extends StatelessWidget {
  const FlowmeterDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flow Meter Details',
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columnSpacing: 20.0,
          headingRowHeight: 60.0,
          dataRowHeight: 50.0,
          headingTextStyle: const TextStyle(
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
            DataColumn(label: Text('Flow Rate (GPM)')),
            DataColumn(label: Text('Total Flow (Gallon)')),
            DataColumn(label: Text('Temperature (°F)')),
            DataColumn(label: Text('Pressure (PSI)')),
            DataColumn(label: Text('Density (lb/Gal)')),
            DataColumn(label: Text('Viscosity (cP)')),
            DataColumn(label: Text('API Gravity')),
          ],
          rows: FlowmeterModel.list.map((item) {
            return DataRow(
              cells: [
                DataCell(Text(item.timestamp)),
                DataCell(Text(item.flowRateGpm?.toString() ?? '')),
                DataCell(Text(item.totalFlowGalon?.toString() ?? '')),
                DataCell(Text(item.tempFahrenheit?.toString() ?? '')),
                DataCell(Text(item.pressurePsi?.toString() ?? '')),
                DataCell(Text(item.densitylbGal?.toString() ?? '')),
                DataCell(Text(item.viscosityCp?.toString() ?? '')),
                DataCell(Text(item.apiGravity?.toString() ?? '')),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
