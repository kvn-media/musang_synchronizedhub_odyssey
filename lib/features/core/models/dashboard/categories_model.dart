import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/atg_details.dart';
import 'package:musang_syncronizehub_odyssey/features/core/screens/dashboard/widget/flowmeter_details.dart';

class CategoriesModel {
  final String title, heading;
  final VoidCallback? onPress;

  CategoriesModel(
    this.title,
    this.heading,
    this.onPress,
  );

  static List<CategoriesModel> list = [
    CategoriesModel('FM', 'Flow Meter', null),
    CategoriesModel('ATG', 'Automatic Tank Gauge', null),
  ];

  static void onTapATG(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ATGDetailsPage(),
      ),
    );
  }

  static void onTapFlowmeter(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FlowmeterDetailsPage(),
      ),
    );
  }
}
