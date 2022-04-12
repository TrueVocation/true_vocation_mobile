import 'package:flutter/material.dart';

class InvertedClipper extends CustomClipper<Path> {
  InvertedClipper();

  @override
  Path getClip(Size size) {
    return Path.combine(
      PathOperation.difference,
      Path()..addRect(Rect.fromLTWH(0, 0, size.width, size.height)),
      Path()..addRect(Rect.fromLTWH(1, 1, size.width - 5, size.height - 5)),
    );
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
