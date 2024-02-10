import 'package:flutter/material.dart';

class CategoriesModel {
  final String title, heading, subHeading;
  final VoidCallback? onPress;

  CategoriesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
  );

  static List<CategoriesModel> list = [
    CategoriesModel('FM', 'Flow Meter', 'Download', null),
    CategoriesModel('ATG', 'Automatic Tank Gauge', 'Download', null),
  ];
}
