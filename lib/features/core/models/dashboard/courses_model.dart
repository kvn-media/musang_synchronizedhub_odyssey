import 'package:flutter/material.dart';

class CoursesModel {
  final String title, heading, subHeading, paragraph, image;
  final VoidCallback? onPress;

  CoursesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.paragraph,
    this.image,
    this.onPress,
  );

  static List<CoursesModel> list = [
    CoursesModel(
      'Flow Meter Data',
      '3 Sections',
      'Programming Languages',
      '',
      'assets/dashboard_3.png',
      null,
    ),
    CoursesModel(
      'ATG Data',
      '10 Sections',
      '50 Lessons',
      '',
      'assets/dashboard_2.png',
      null,
    ),
    // CoursesModel(
    //   'HTML / CSS Crash Course',
    //   '2 Sections',
    //   '35 Lessons',
    //   '',
    //   'assets/dashboard_4.png',
    //   null,
    // ),
    // CoursesModel(
    //   'App Developer Course',
    //   '2 Sections',
    //   'Programming Languages & UI',
    //   '',
    //   'assets/dashboard_1.png',
    //   null,
    // ),
    // CoursesModel(
    //   'JAVA / C++ Course',
    //   '2 Sections',
    //   'Programming Languages',
    //   '',
    //   'assets/dashboard_2.png',
    //   null,
    // ),
  ];
}
