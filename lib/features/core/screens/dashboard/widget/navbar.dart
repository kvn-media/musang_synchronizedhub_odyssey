import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/dashboard.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_details.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_details.dart';

import '../../../controllers/atg_controller.dart';
import '../../../controllers/flowmeter_controller.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  final BuildContext context;
  final Function(int) onTabChange;
  final ATGBusinessLogic atgLogic; // Add this
  final FlowMeterBusinessLogic flowmeterLogic; // Add this

  NavBar({
    required this.selectedIndex,
    required this.context,
    required this.onTabChange,
    required this.atgLogic, // Add this
    required this.flowmeterLogic, // Add this
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GNav(
      selectedIndex: selectedIndex,
      onTabChange: (index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(
                  atgLogic: atgLogic, // Add this
                  flowmeterLogic: flowmeterLogic, // Add this
                ),
              ),
            );
            break;
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ATGDetailsPage(),
              ),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FlowmeterDetailsPage(),
              ),
            );
            break;
        // Add more cases here for more tabs
        }
      },
      tabs: [
        GButton(
          icon: Icons.home,
        ),
        GButton(
          icon: Icons.propane_tank_rounded,
        ),
        GButton(
          icon: Icons.gas_meter_rounded,
        ),
        // Add more GButton here for more tabs
      ],
    );
  }
}
