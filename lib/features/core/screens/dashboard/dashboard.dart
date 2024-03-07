import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/appbar.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/banners.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/categories.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_list.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/heading.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_list.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/navbar.dart';
import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/oil_volume_animation.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/atg_controller.dart';
import '../../controllers/flowmeter_controller.dart';

class DashBoard extends StatefulWidget {
  final ATGBusinessLogic atgLogic;
  final FlowMeterBusinessLogic flowmeterLogic;

  const DashBoard(
      {required this.atgLogic, required this.flowmeterLogic, super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  String lastUpdated = DateFormat('yyyy-MM-dd hh:mm:ss').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  Future<void> _refreshData() async {
    try {
      await widget.atgLogic.fetchData();
      setState(() {
        lastUpdated = DateFormat('yyyy-MM-dd hh:mm:ss')
            .format(widget.atgLogic.getLatestTimestamp());
      });
    } catch (e) {
      // Handle error
      print("Error occurred: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(2.w), // Use .w here
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Heading
                DashboardHeading(txtTheme: txtTheme, lastUpdated: lastUpdated),

                SizedBox(
                  height: 4.h, // Use .h here
                ),

                // // ATG data
                // Text(
                //   'ATG data',
                //   style: TextStyle(
                //     fontSize: 18.sp, // Use .sp here
                //     fontWeight: FontWeight.w800,
                //   ),
                // ),

                // SizedBox(
                //   height: 2.h, // Use .h here
                // ),

                // ATGDashboardData(logic: widget.atgLogic),

                // Tank Overview
                Text(
                  'Oil Tank Overview',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),

                SizedBox(
                  height: 2.h, // Use .h here
                ),

                OilVolumeAnimationPage(
                  atgController:
                      widget.atgLogic, // Pass the ATGBusinessLogic instance
                ),

                SizedBox(
                  height: 2.h, // Use .h here
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        selectedIndex: _selectedIndex,
        context: context,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        atgLogic: widget.atgLogic,
        flowmeterLogic: widget.flowmeterLogic,
      ),
    );
  }
}
