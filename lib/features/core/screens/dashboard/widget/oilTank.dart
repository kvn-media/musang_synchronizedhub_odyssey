import 'package:flutter/material.dart';
import 'dart:math';

import 'package:musang_syncronizehub_odyssey/features/core/controllers/atg_controller.dart';

class DataAnimateWidget extends StatefulWidget {
  final double level;

  DataAnimateWidget({required this.level, super.key});

  @override
  State<DataAnimateWidget> createState() => _DataAnimateWidgetState();
}

class _DataAnimateWidgetState extends State<DataAnimateWidget> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: ATGBusinessLogic().dataStream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomPaint(
            painter: TankPainter(widget.level),
            child: Container(),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
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

    // Gambar bentuk truk tangki menggunakan Path
    final truckPath = Path()
      ..moveTo(size.width * 0.2, size.height * 0.5) // Mulai dari titik ini
      ..lineTo(size.width * 0.8, size.height * 0.5) // Garis ke titik ini
      ..arcTo(
          Rect.fromCenter(
              center: Offset(size.width * 0.8, size.height * 0.5),
              width: size.width * 0.2,
              height: size.height * 0.5),
          -pi / 2,
          pi,
          false) // Gambar arc untuk bentuk tangki
      ..lineTo(size.width * 0.2, size.height * 0.5); // Kembali ke titik awal

    // Gambar bentuk minyak di dalam tangki
    final oilPath = Path()
      ..addRect(Rect.fromLTWH(size.width * 0.2, size.height * (1 - level),
          size.width * 0.6, size.height * level)); // Rect untuk minyak

    canvas.drawPath(truckPath, paint);
    canvas.drawPath(oilPath, oilPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
