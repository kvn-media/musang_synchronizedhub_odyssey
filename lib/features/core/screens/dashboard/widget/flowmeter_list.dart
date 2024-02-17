import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../controllers/flowmeter_controller.dart';
import '../../../models/dashboard/flowmeter_model.dart';

class FlowMeterDashboardData extends StatefulWidget {
  final FlowMeterBusinessLogic logic;
  const FlowMeterDashboardData({
    super.key,
    required this.logic,
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
      name: 'Flow Rate GPM',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.totalFlowGalon,
      name: 'Total Flow Galon',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.tempFahrenheit,
      name: 'Temperature Fahrenheit',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.pressurePsi,
      name: 'Pressure PSI',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.densitylbGal,
      name: 'Density lb/Gal',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.viscosityCp,
      name: 'Viscosity Cp',
    ),
    StackedBarSeries<FlowmeterModel, String>(
      dataSource: FlowmeterModel.list,
      xValueMapper: (FlowmeterModel data, _) => data.timestamp,
      yValueMapper: (FlowmeterModel data, _) => data.apiGravity,
      name: 'API Gravity',
    ),
  ];

  @override
  void initState() {
    super.initState();
    list = FlowmeterModel.list;

    // Set up the timer
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      widget.logic.updateData();
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
          // Check for Infinity or NaN values
          if (!item.flowRateGpm!.isFinite ||
              !item.totalFlowGalon!.isFinite ||
              !item.tempFahrenheit!.isFinite ||
              !item.pressurePsi!.isFinite ||
              !item.densitylbGal!.isFinite ||
              !item.viscosityCp!.isFinite ||
              !item.apiGravity!.isFinite) {
            print('Invalid data detected: $item');
            continue; // Skip invalid data
          }

          // Perform operations only if the values are valid
          item.flowRateGpm = (item.flowRateGpm! + 10).toInt();
          item.totalFlowGalon = (item.totalFlowGalon! * 2).toInt();
          item.tempFahrenheit = (item.tempFahrenheit! - 5).toInt();
          item.pressurePsi = (item.pressurePsi! + 70).toInt();
          item.densitylbGal = (item.densitylbGal! + 7.5);
          item.viscosityCp = (item.viscosityCp! + 10).toInt();
          item.apiGravity = (item.apiGravity!).toInt();

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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 200,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
              enableAxisAnimation: true,
              legend: Legend(isVisible: true),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
