import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
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

  final List<Gradient> gradients = [
    LinearGradient(
      colors: [Color(0xFF4CC3D9), Color(0xFF357EA6)],
      stops: [0.0, 1.0],
    ),
  ];

  @override
  void initState() {
    super.initState();

    // Set up the timer
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      widget.logic.fetchData();
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ElevatedButton(
                onPressed: () => widget.logic.selectDateRange(context),
                child: Text(
                  'Select Date Range',
                  style: TextStyle(fontSize: 2.h),
                ),
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          FutureBuilder(
            future: widget.logic.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Container(
                  height: 300, // You can adjust this value as needed
                  width: 100.w,
                  padding: EdgeInsets.all(2.w),
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
                      ...widget.logic.detailedChartData,
                    ],
                    primaryXAxis: DateTimeAxis(
                      dateFormat: DateFormat('yyyy-MM-dd HH:mm:ss'),
                      desiredIntervals: 5,
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
                    zoomPanBehavior: widget.logic.zoomPanBehavior,
                    trackballBehavior: TrackballBehavior(
                      enable: true,
                    ), // to enable trackball
                    tooltipBehavior: TooltipBehavior(
                      enable: true,
                      canShowMarker: true,
                      header: '',
                      format: 'point.x : point.y',
                    ),
                    selectionType: SelectionType.point,
                    selectionGesture: ActivationMode.singleTap,
                  ),
                );
              }
            },
          ),
          SizedBox(
            height: 4.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(columns: <DataColumn>[
              DataColumn(
                label: Text('Posisi Awal', style: TextStyle(fontSize: 2.h)),
              ),
              DataColumn(
                label: Text('Posisi Akhir', style: TextStyle(fontSize: 2.h)),
              ),
              DataColumn(
                label: Text('Berkurang', style: TextStyle(fontSize: 2.h)),
              ),
            ], rows: <DataRow>[
              DataRow(
                cells: [
                  DataCell(Text('1000', style: TextStyle(fontSize: 2.h))),
                  DataCell(Text('930', style: TextStyle(fontSize: 2.h))),
                  DataCell(Text('-70', style: TextStyle(fontSize: 2.h))),
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }
}
