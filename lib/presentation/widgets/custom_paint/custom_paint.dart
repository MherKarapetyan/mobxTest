import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:mobx_with_clean_archtecture/helper/themes.dart';

class AuthPageCustomPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = AppThemes.darkPurple;
    final Path path = Path()
      ..lineTo(0, window.physicalSize.height * 0.08)
      ..relativeQuadraticBezierTo(size.width * 0.78, -130, size.width, 0)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
