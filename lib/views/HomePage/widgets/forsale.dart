import 'package:flutter/material.dart';

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height - 2);
    path.lineTo(size.width, size.height - 5);
    path.lineTo(0, size.height - 40); // Adjust this value to change the angle
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
