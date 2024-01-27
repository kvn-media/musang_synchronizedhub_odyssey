import 'package:flutter/material.dart';
class CategoriesModel{
  final String title,heading,subHeading;
  final VoidCallback? onPress;

  CategoriesModel(this.title, this.heading, this.subHeading, this.onPress,);

  static List<CategoriesModel> list = [
    CategoriesModel('JS','Java Script','10 Lessons',null),
    CategoriesModel('F','Flutter','11 Lessons',null),
    CategoriesModel('H','HTML','8 Lessons',null),
    CategoriesModel('k','Kotlin','20 Lessons',null),
    CategoriesModel('P','Python','100 Lessons',null),
  ];
}
