import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/appbar.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/banners.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/categories.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_list.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/heading.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_list.dart';
import 'package:sizer/sizer.dart';

import '../../controllers/atg_controller.dart';
import '../../controllers/flowmeter_controller.dart';

class DashBoard extends StatelessWidget {
  final ATGBusinessLogic atgLogic;
  final FlowMeterBusinessLogic flowmeterLogic;

  const DashBoard(
      {required this.atgLogic, required this.flowmeterLogic, super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(2.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              DashboardHeading(txtTheme: txtTheme),
              SizedBox(
                height: 4.h,
              ),

              // //Search
              // const DashboardSearch(),
              // const SizedBox(
              //   height: 20,
              // ),

              //Categories
              DashboardCategories(
                atgLogic: atgLogic,
              ),
              SizedBox(
                height: 4.h,
              ),

              // //Banner
              // const DashboardBanner(),
              // const SizedBox(
              //   height: 20,
              // ),

              // ATG data
              Text(
                'ATG data',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(
                height: 2.h,
              ),

              ATGDashboardData(logic: atgLogic),

              SizedBox(
                height: 2.h,
              ),

              // Flow Meter data
              Text(
                'Flow Meter data',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),

              SizedBox(
                height: 2.h,
              ),

              FlowMeterDashboardData(logic: flowmeterLogic),
            ],
          ),
        ),
      ),
    );
  }
}
