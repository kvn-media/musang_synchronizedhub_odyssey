import 'package:flutter/material.dart';

class VolumeClipper extends CustomClipper<Path> {
  VolumeClipper({required this.points});
  final List<Offset> points;
  @override
  Path getClip(Size size) {
    final path = Path();
    path.addPolygon(points, false);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
