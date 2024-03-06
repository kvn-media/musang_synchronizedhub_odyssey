import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardHeading extends StatefulWidget {
  const DashboardHeading({
    super.key,
    required this.txtTheme,
    required this.lastUpdated,
  });

  final TextTheme txtTheme;
  final String lastUpdated;

  @override
  State<DashboardHeading> createState() => _DashboardHeadingState();
}

class _DashboardHeadingState extends State<DashboardHeading> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   'Hey, Welcome to Dashboard ',
        //   style: widget.txtTheme.bodyLarge,
        // ),
        Center(
          child: Text(
            'Last Update ${widget.lastUpdated}',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
