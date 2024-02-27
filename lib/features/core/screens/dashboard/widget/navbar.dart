import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  final ATGBusinessLogic atgLogic;
  final FlowMeterBusinessLogic flowmeterLogic;

  NavBar(
      {required this.selectedIndex,
      required this.context,
      required this.onTabChange,
      required this.atgLogic,
      required this.flowmeterLogic,
      super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GNav(
      rippleColor: theme.brightness == Brightness.dark
          ? Colors.white
          : Colors.black, // tab button ripple color when pressed
      hoverColor: theme.brightness == Brightness.dark
          ? Colors.white70
          : Colors.black45, // tab button hover color
      haptic: true, // haptic feedback
      tabBorderRadius: 15,
      tabActiveBorder:
          Border.all(color: Colors.black, width: 1), // tab button border
      // tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
      tabShadow: [
        BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)
      ], // tab button shadow
      curve: Curves.easeOutExpo, // tab animation curves
      duration: Duration(milliseconds: 500), // tab animation duration
      gap: 8, // the tab button gap between icon and text
      color: theme.brightness == Brightness.dark ? Colors.white : Colors.black,
      activeColor: theme.brightness == Brightness.dark
          ? Colors.white
          : Colors.black, // selected icon and text color
      iconSize: 24,
      tabBackgroundColor: Colors.blueGrey[400]!
          .withOpacity(0.1), // selected tab background color
      padding: EdgeInsets.symmetric(
          horizontal: 20, vertical: 20), // navigation bar padding
      selectedIndex: selectedIndex,
      onTabChange: (index) {
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DashBoard(
                  atgLogic: atgLogic,
                  flowmeterLogic: flowmeterLogic,
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
          text: "Home",
        ),
        GButton(
          icon: const IconData(0x0020,
              fontFamily: 'MaterialIcons'), // Transparent IconData
          leading: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset(
              'assets/icons/tanki.svg',
              color: theme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          text: "ATG",
        ),
        GButton(
          icon: const IconData(0x0020,
              fontFamily: 'MaterialIcons'), // Transparent IconData
          leading: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset(
              'assets/icons/flowmeter.svg',
              color: theme.brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
          ),
          text: "Flow Meter",
        ),
        // Add more GButton here for more tabs
      ],
    );
  }
}
