import 'dart:async';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../controllers/atg_controller.dart';

class ATGDashboardData extends StatefulWidget {
  final ATGBusinessLogic logic;

  const ATGDashboardData({
    Key? key,
    required this.logic,
  }) : super(key: key);

  @override
  State<ATGDashboardData> createState() => _ATGDashboardDataState();
}

class _ATGDashboardDataState extends State<ATGDashboardData> {
  late Timer timer;
  DateTimeRange? _dateRange;

  final List<Gradient> gradients = [
    LinearGradient(
      colors: [Color(0xFF4CC3D9), Color(0xFF357EA6)],
      stops: [0.0, 1.0],
    ),
  ];

  Future<void> _selectDateRange(BuildContext context) async {
    final DateTimeRange? picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (picked != null && picked != _dateRange) {
      setState(() {
        _dateRange = picked;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    widget.logic.initializeChartData();

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
          ElevatedButton(
            onPressed: () => _selectDateRange(context),
            child: Text('Select Date Range'),
          ),
          const SizedBox(
            height: 25,
          ),
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
              series: [
                // ...widget.logic.detailedChartData,
                ...widget.logic.detailedChartData
              ],
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
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(columns: const <DataColumn>[
              DataColumn(
                label: Text('Posisi Awal'),
              ),
              DataColumn(
                label: Text('Posisi Akhir'),
              ),
              DataColumn(
                label: Text('Berkurang'),
              ),
            ], rows: const <DataRow>[
              DataRow(
                cells: [
                  DataCell(Text('1000')),
                  DataCell(Text('930')),
                  DataCell(Text('-70')),
                ],
              ),
            ]),
          ),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}
