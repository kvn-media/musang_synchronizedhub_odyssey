import 'package:flutter/material.dart';

class DashboardHeading extends StatelessWidget {
  const DashboardHeading({
    super.key,
    required this.txtTheme,
  });

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hey, Welcome to Dashboard ',
          style: txtTheme.bodyLarge,
        ),
        const Text(
          'Explore Dashboard',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
