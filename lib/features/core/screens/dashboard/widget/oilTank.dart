import 'package:flutter/material.dart';

class DataAnimateWidget extends StatefulWidget {
  final double level;

  DataAnimateWidget({required this.level, super.key});

  @override
  State<DataAnimateWidget> createState() => _DataAnimateWidgetState();
}

class _DataAnimateWidgetState extends State<DataAnimateWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: OilTankPainter(widget.level),
      child: Container(),
    );
  }
}

class OilTankPainter extends CustomPainter {
  final double level;

  OilTankPainter(this.level);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final oilPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final tankRect = Rect.fromLTWH(0, 0, size.width, size.height);
    final oilRect = Rect.fromLTWH(
        0, size.height * (1 - level), size.width, size.height * level);

    canvas.drawRect(tankRect, paint);
    canvas.drawRect(oilRect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
