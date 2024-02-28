import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/appbar.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/banners.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/categories.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_list.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/heading.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_list.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/navbar.dart';
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

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(2.w),  // Use .w here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              DashboardHeading(txtTheme: txtTheme),
              SizedBox(
                height: 4.h,  // Use .h here
              ),

              //Categories
              DashboardCategories(
                atgLogic: widget.atgLogic,
              ),
              SizedBox(
                height: 4.h,  // Use .h here
              ),

              // ATG data
              Text(
                'ATG data',
                style: TextStyle(
                  fontSize: 20.sp,  // Use .sp here
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(
                height: 2.h,  // Use .h here
              ),

              ATGDashboardData(logic: widget.atgLogic),

              SizedBox(
                height: 2.h,  // Use .h here
              ),

              // Flow Meter data
              Text(
                'Flow Meter data',
                style: TextStyle(
                  fontSize: 20.sp,  // Use .sp here
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(
                height: 2.h,  // Use .h here
              ),

              FlowMeterDashboardData(logic: widget.flowmeterLogic),
            ],
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
