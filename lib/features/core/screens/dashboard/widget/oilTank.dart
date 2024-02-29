import 'package:flutter/material.dart';
import 'dart:math';

class DataAnimateWidget extends StatefulWidget {
  final double level;

  DataAnimateWidget({required this.level, Key? key}) : super(key: key);

  @override
  State<DataAnimateWidget> createState() => _DataAnimateWidgetState();
}

class _DataAnimateWidgetState extends State<DataAnimateWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TankPainter(widget.level),
      child: Container(),
    );
  }
}

class TankPainter extends CustomPainter {
  final double level;

  TankPainter(this.level);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final oilPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    // Draw the tank using Path
    final tankPath = Path()
      ..moveTo(0, size.height * 0.1) // Start from this point
      ..arcTo(
          Rect.fromCenter(
              center: Offset(size.width * 0.5, size.height * 0.1),
              width: size.width,
              height: size.height * 0.2),
          pi,
          -pi,
          false) // Draw arc for top of tank
      ..lineTo(size.width, size.height) // Line to bottom right
      ..arcTo(
          Rect.fromCenter(
              center: Offset(size.width * 0.5, size.height),
              width: size.width,
              height: size.height * 0.2),
          0,
          pi,
          false) // Draw arc for bottom of tank
      ..close(); // Close the path

    // Draw the oil inside the tank
    final oilPath = Path()
      ..addRect(Rect.fromLTWH(0, size.height * (1 - level), size.width,
          size.height * level)); // Rect for oil

    canvas.drawPath(tankPath, paint);
    canvas.drawPath(oilPath, oilPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
