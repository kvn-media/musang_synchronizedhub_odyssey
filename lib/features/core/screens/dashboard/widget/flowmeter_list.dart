import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../models/dashboard/flowmeter_model.dart';

class FlowMeterDashboardData extends StatefulWidget {
  const FlowMeterDashboardData({
    super.key,
  });

  @override
  State<FlowMeterDashboardData> createState() => _FlowMeterDashboardDataState();
}

class _FlowMeterDashboardDataState extends State<FlowMeterDashboardData> {
  late List<FlowmeterModel> list;
  late Timer timer;

  final List<Gradient> gradients = [
    LinearGradient(
      colors: [Color(0xFF4CC3D9), Color(0xFF357EA6)],
      stops: [0.0, 1.0],
    ),
  ];

  final List<StackedBarSeries<FlowmeterModel, String>> _detailedChartData = [
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.flowRateGpm,
      name: 'Level Barrel',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.totalFlowGalon,
      name: 'Volume Change Barrel',
    ),
  ];

  @override
  void initState() {
    super.initState();
    list = FlowmeterModel.list;

    // Set up the timer
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      updateData();
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    timer.cancel();
    super.dispose();
  }

  void updateData() {
    setState(() {
      // Update data in here, hints change timestamps, values, etc
      for (var item in list) {
        if (item.flowRateGpm != null &&
            item.totalFlowGalon != null &&
            item.tempFahrenheit != null &&
            item.pressurePsi != null &&
            item.densitylbGal != null &&
            item.viscosityCp != null &&
            item.apiGravity != null) {
          item.flowRateGpm = item.flowRateGpm! + 10;
          item.totalFlowGalon = item.totalFlowGalon! * 2;
          item.tempFahrenheit = item.tempFahrenheit! - 5;
          item.pressurePsi = item.pressurePsi! + 70;
          item.densitylbGal = item.densitylbGal! + 7.5;
          item.viscosityCp = item.viscosityCp! + 10;
          item.timestamp =
              DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    Color textColor = isDarkMode ? Colors.white : Colors.black;
    Color chartContainerColor =
        (isDarkMode ? Colors.grey[800] : Colors.white) as Color;

    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: 200,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: chartContainerColor,
            boxShadow: [
              BoxShadow(
                color: isDarkMode
                    ? Colors.transparent
                    : Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: SfCartesianChart(
            series: _detailedChartData,
            primaryXAxis: CategoryAxis(
              labelStyle: TextStyle(
                color: textColor,
              ),
            ),
            primaryYAxis: NumericAxis(
              labelStyle: TextStyle(
                color: textColor,
              ),
            ),
          ),
        ),
        // DataTable
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: chartContainerColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: DataTable(
              headingTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              dataTextStyle: TextStyle(
                fontSize: 18,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
              columnSpacing: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isDarkMode ? Colors.black : Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              columns: [
                DataColumn(
                  label: Text(
                    'Timestamp',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Flow Rate (GPM)',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Total Flow (Gallon)',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Temperature (°F)',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Pressure (PSI)',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Density (lb/Gal)',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Viscosity (cP)',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'API Gravity',
                    style: TextStyle(color: textColor),
                  ),
                ),
              ],
              rows: list.map((item) {
                return DataRow(
                  cells: [
                    DataCell(Text(item.timestamp)),
                    DataCell(Text(item.flowRateGpm?.toString() ?? "")),
                    DataCell(Text(item.totalFlowGalon?.toString() ?? "")),
                    DataCell(Text(item.tempFahrenheit?.toString() ?? "")),
                    DataCell(Text(item.pressurePsi?.toString() ?? "")),
                    DataCell(Text(item.densitylbGal?.toString() ?? "")),
                    DataCell(Text(item.viscosityCp?.toString() ?? "")),
                    DataCell(Text(item.apiGravity?.toString() ?? "")),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
