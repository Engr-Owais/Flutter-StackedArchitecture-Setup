import 'dart:math';

import 'package:flutter/material.dart';

class SineWavwWidget extends StatefulWidget {
  final Color? waveColor;
  final double amplitude;
  final double? waveWidth;
  final double? waveHeight;
  final int waveMilliseconds;
  final int numberOfWave;

  SineWavwWidget({
    this.waveColor,
    this.amplitude = 10,
    this.waveWidth,
    this.waveHeight,
    this.waveMilliseconds = 1000,
    this.numberOfWave = 3,
  });

  @override
  _WaveWidgetState createState() => _WaveWidgetState();
}

class _WaveWidgetState extends State<SineWavwWidget>
    with TickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.waveMilliseconds),
    );

    _animationController!.repeat();
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.waveWidth ?? MediaQuery.of(context).size.width,
      height: widget.waveHeight ?? MediaQuery.of(context).size.height,
      child: AnimatedBuilder(
        animation: _animationController!,
        builder: (context, child) {
          return CustomPaint(
            painter: WaveWidgetPainter(
              animation: _animationController!,
              waveColor: widget.waveColor!,
              amplitude: widget.amplitude,
              numberOfWave: widget.numberOfWave,
            ),
          );
        },
      ),
    );
  }
}

class WaveWidgetPainter extends CustomPainter {
  Animation<double> animation;
  Color waveColor;
  double amplitude;
  int numberOfWave;

  WaveWidgetPainter({
    required this.animation,
    required this.waveColor,
    required this.amplitude,
    required this.numberOfWave,
  });

  @override
  void paint(Canvas canvas, Size size) {
    /// Draw wave
    Paint wavePaint = new Paint()
      ..color = waveColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    Path path = Path();
    path.moveTo(0.0, 0.0);
    for (double i = 0.0; i < size.width; i++) {
      path.lineTo(
        i,
        sin((i / size.width * numberOfWave * pi) + (animation.value * 2 * pi)) *
            amplitude,
      );
    }

    canvas.drawPath(path, wavePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
