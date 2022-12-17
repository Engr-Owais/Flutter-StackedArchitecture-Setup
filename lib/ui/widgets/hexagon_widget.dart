import 'package:flutter/material.dart';

class HexagonShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.1980000);
    path0.lineTo(size.width * 0.3737500, size.height * 0.3000000);
    path0.lineTo(size.width * 0.3737500, size.height * 0.5980000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.6960000);
    path0.lineTo(size.width * 0.6262500, size.height * 0.6000000);
    path0.lineTo(size.width * 0.6262500, size.height * 0.3000000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.1980000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path0 = Path();
    path0.moveTo(size.width * 0.5000000, size.height * 0.0222222);
    path0.lineTo(0, size.height * 0.3244444);
    path0.lineTo(0, size.height * 0.8777778);
    path0.lineTo(size.width * 0.4987500, size.height * 1.12);
    path0.lineTo(size.width, size.height * 0.8800000);
    path0.lineTo(size.width, size.height * 0.3288889);
    path0.lineTo(size.width * 0.5000000, size.height * 0.0222222);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
