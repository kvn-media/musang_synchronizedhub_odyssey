import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/flowmeter_controller.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/appbar.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/search.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_list.dart';
// import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/banners.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/categories.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_list.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/heading.dart';

import '../../controllers/atg_controller.dart';

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
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              DashboardHeading(txtTheme: txtTheme),
              const SizedBox(
                height: 20,
              ),

              //Search
              // const DashboardSearch(),
              // const SizedBox(
              //   height: 20,
              // ),

              //Categories
              DashboardCategories(
                atgLogic: atgLogic,
              ),
              const SizedBox(
                height: 20,
              ),

              // //Banner
              // const DashboardBanner(),
              // const SizedBox(
              //   height: 20,
              // ),

              // ATG data
              const Text(
                'ATG data',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              ATGDashboardData(logic: atgLogic),

              const SizedBox(
                height: 20,
              ),

              // Flow Meter data
              const Text(
                'Flow Meter data',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              FlowMeterDashboardData(logic: flowmeterLogic),
            ],
          ),
        ),
      ),
    );
  }
}
