import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/data_sources/atg_data_grid_source.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/atg_controller.dart';
import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/volume_animation_controller.dart';
import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/volume_slide_icon.dart';

import '../core/models/dashboard/atg_model.dart';

class OilVolumeAnimationPage extends StatefulWidget {
  final ATGBusinessLogic atgController;

  OilVolumeAnimationPage({required this.atgController, super.key});

  static PageRoute route(ATGBusinessLogic atgController) => MaterialPageRoute(
      builder: (_) => OilVolumeAnimationPage(atgController: atgController));

  @override
  _OilVolumeAnimationPageState createState() => _OilVolumeAnimationPageState();
}

class _OilVolumeAnimationPageState extends State<OilVolumeAnimationPage> {
  double height = 0.47;
  final double min = 0.47;
  final double max = 0.01;

  void _increaseHeight() {
    setState(() {
      height <= max ? max : height -= 0.003;
    });
  }

  void _decreaseHeight() {
    setState(() {
      height >= min ? min : height += 0.003;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? Colors.black
          : Colors.white,
      // appBar: AppBar(
      //   title: Text('Oil Tank Overview'),
      //   centerTitle: true,
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: FutureBuilder<List<ATGModel>>(
        future: widget.atgController.fetchData(),
        builder:
            (BuildContext context, AsyncSnapshot<List<ATGModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Loading state
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}'); // Error state
          } else {
            final latestData = snapshot.data?.last;
            final latestTankLevel = (latestData?.tank_level ?? 0.0).toDouble();

            return SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Volume Level (10-100%)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey.shade300,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: SizedBox(
                                height: (MediaQuery.of(context).size.height *
                                        0.65) *
                                    0.75,
                                width: 7,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.yellow,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            VolumeAnimationContainer(
                              height:
                                  MediaQuery.of(context).size.height * height,
                              seconds: height <= (min / 2) ? 1000 : 1500,
                              colors: const [
                                Colors.blue,
                                Colors.blueAccent,
                                Color.fromARGB(255, 5, 39, 97),
                              ],
                              tankLevel:
                                  latestTankLevel, // Pass the latest tank level
                            ),
                          ],
                        ),
                        Positioned(
                          left: (MediaQuery.of(context).size.width / 2) + 135,
                          top: (MediaQuery.of(context).size.height - 40) *
                              (latestTankLevel /
                                  100), // Adjust based on latest tank level
                          child: GestureDetector(
                            onVerticalDragUpdate: (details) {
                              if (details.delta.dy > 0) {
                                _decreaseHeight();
                              } else {
                                _increaseHeight();
                              }
                            },
                            child: const VolumeSlideIcon(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SfDataGrid(
                      source: getATGDataSource(snapshot.data ?? [],
                          mode: DisplayMode.latest),
                      columns: [
                        // Define your columns here
                        // GridColumn(
                        //   columnName: 'Timestamp',
                        //   label: Center(child: Text('Timestamp')),
                        //   width: 200.0,
                        // ),
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
                            label:
                                Center(child: Text('Avg Temperature Celcius')),
                            width: 200.0),
                        GridColumn(
                            columnName: 'Water Level Meter',
                            label: Center(child: Text('Water Level Meter')),
                            width: 200.0),
                        GridColumn(
                            columnName: 'Product Temp Celcius',
                            label: Center(child: Text('Product Temp Celcius')),
                            width: 200.0),
                        // GridColumn(
                        //     columnName: 'Alarm',
                        //     label: Center(child: Text('Alarm')),
                        //     width: 200.0),
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
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
