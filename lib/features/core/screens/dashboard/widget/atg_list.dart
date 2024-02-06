import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../models/dashboard/atgSummary_model.dart';
import '../../../models/dashboard/atg_model.dart';

class ATGDashboardData extends StatefulWidget {
  const ATGDashboardData({
    Key? key,
  }) : super(key: key);

  @override
  State<ATGDashboardData> createState() => _ATGDashboardDataState();
}

class _ATGDashboardDataState extends State<ATGDashboardData> {
  late List<ATGModel> _listData;
  late Timer timer;

  final List<Gradient> gradients = [
    LinearGradient(
      colors: [Color(0xFF4CC3D9), Color(0xFF357EA6)],
      stops: [0.0, 1.0],
    ),
  ];

  final List<StackedBarSeries<ATGModel, String>> _detailedChartData = [
    StackedBarSeries<ATGModel, String>(
      dataSource: ATGModel.list,
      xValueMapper: (ATGModel data, _) => data.timestamp,
      yValueMapper: (ATGModel data, _) => data.levelBarrel,
      name: 'Level Barrel',
    ),
    StackedBarSeries<ATGModel, String>(
      dataSource: ATGModel.list,
      xValueMapper: (ATGModel data, _) => data.timestamp,
      yValueMapper: (ATGModel data, _) => data.volumeChangeBarrel,
      name: 'Volume Change Barrel',
    ),
  ];

  final List<StackedBarSeries<ATGSummary, String>> _summaryChartData = [];

  @override
  void initState() {
    super.initState();
    _listData = ATGModel.list;

    try {
      // Create a summary instance
      ATGSummary summary = ATGSummary(_listData); // Use the updated list name
      _summaryChartData.add(
        StackedBarSeries<ATGSummary, String>(
          dataSource: [summary],
          xValueMapper: (ATGSummary data, _) => "Summary",
          yValueMapper: (ATGSummary data, _) => data.finalLevel,
          name: "Final Level",
        ),
      );
    } catch (error) {
      print('Error creating summary: $error');
      // Handle error gracefully, e.g., display a message to the user
    }

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

  int updateIntervalSeconds = 5;
  int elapsedTime = 0;

  void updateData() {
    setState(() {
      // Update data in here, hints change timestamps, values, etc
      try {
        for (var item in _listData) {
          if (item.levelBarrel != null &&
              item.volumeChangeBarrel != null &&
              item.avgTempCelcius != null &&
              item.waterLevelMeter != null &&
              item.productTempCelcius != null) {
            item.levelBarrel = item.levelBarrel! + 10; // Increment integer
            item.volumeChangeBarrel =
                item.volumeChangeBarrel! * 2; // Multiply integer
            item.avgTempCelcius = item.avgTempCelcius! - 5; // Decrement integer
            item.waterLevelMeter =
                item.waterLevelMeter! + 0.25; // Add to double
            item.productTempCelcius =
                item.productTempCelcius! ~/ 5; // Integer division

            item.timestamp =
                DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
            elapsedTime += updateIntervalSeconds;
          }
        }

        // Update chart data by creating new instances of StackedBarSeries
        _detailedChartData[0] = StackedBarSeries<ATGModel, String>(
          dataSource: _listData,
          xValueMapper: (ATGModel data, _) => data.timestamp,
          yValueMapper: (ATGModel data, _) => data.levelBarrel!,
          name: 'Level Barrel',
        );
        _detailedChartData[1] = StackedBarSeries<ATGModel, String>(
          dataSource: _listData,
          xValueMapper: (ATGModel data, _) => data.timestamp,
          yValueMapper: (ATGModel data, _) => data.volumeChangeBarrel!,
          name: 'Volume Change Barrel',
        );
      } catch (error) {
        print('Error updating data: $error');
        // Handle error gracefully, e.g., display a message to the user
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
            series: [..._detailedChartData, ..._summaryChartData],
            primaryXAxis: CategoryAxis(
              labelStyle: TextStyle(
                color: textColor,
              ),
              majorGridLines: MajorGridLines(
                color: textColor, // Set color for light mode
              ),
            ),
            primaryYAxis: NumericAxis(
              labelStyle: TextStyle(
                color: textColor,
              ),
              majorGridLines: MajorGridLines(
                color: textColor, // Set color for light mode
              ),
            ),
          ),
        ),
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
                    'Alarm',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Level Barrel',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Volume Change Barrel',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Avg Temp Celcius',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Water Level Meter',
                    style: TextStyle(color: textColor),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Product Temp Celcius',
                    style: TextStyle(color: textColor),
                  ),
                ),
              ],
              rows: _listData.map((item) {
                return DataRow(
                  cells: [
                    DataCell(Text(item.timestamp)),
                    DataCell(Text(item.alarm)),
                    DataCell(Text(item.levelBarrel?.toString() ?? "")),
                    DataCell(Text(item.volumeChangeBarrel?.toString() ?? "")),
                    DataCell(Text(item.avgTempCelcius?.toString() ?? "")),
                    DataCell(Text(item.waterLevelMeter?.toString() ?? "")),
                    DataCell(Text(item.productTempCelcius?.toString() ?? "")),
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
