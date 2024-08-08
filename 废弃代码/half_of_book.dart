
import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/material.dart';

class ArcProgressPainter extends CustomPainter {
  final double progress;
  final Color backgroundColor;
  final double strokeWidth;
  final TextStyle textStyle;

  ArcProgressPainter({
    required this.progress,
    required this.backgroundColor,
    required this.strokeWidth,
    required this.textStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final gradientColors = [const Color(0xFFFFC75A), const Color(0xFF6DAFF9), const Color(0xFF31A7AE)];
    final gradient = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: gradientColors,
    );

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = math.min(size.width / 2, size.height / 2);

    Rect rect = Rect.fromCircle(center: center, radius: radius).inflate(-strokeWidth / 2);

    double degreesToRadians(num deg) => deg * (math.pi / 180.0);
    double startAngle = degreesToRadians(90 + 40);
    double sweepAngle = degreesToRadians(360 - 80);

    for (double i = 0; i < sweepAngle; i += 0.01) {
      double angle = startAngle + i;
      double colorPosition = i / sweepAngle;
      Color color = _calculateGradientColor(gradientColors, colorPosition);

      Paint segmentPaint = Paint()
        ..color = color
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;

      canvas.drawArc(
        rect,
        angle,
        0.01, // 绘制小段的角度
        false,
        segmentPaint,
      );
    }

    double sliderAngle = startAngle + progress * sweepAngle;
    Offset sliderPosition = Offset(
      center.dx + (radius - strokeWidth / 2) * cos(sliderAngle),
      center.dy + (radius - strokeWidth / 2) * sin(sliderAngle),
    );

    double sliderRadius = 28 / 2;
    Paint sliderPaint = Paint()..color = _calculateSliderColor(progress); // Assuming you have this method

    canvas.drawCircle(sliderPosition, sliderRadius, sliderPaint);

    Paint whiteCenterPaint = Paint()..color = Colors.white;
    canvas.drawCircle(sliderPosition, 16 / 2, whiteCenterPaint);
  }

  Color _calculateGradientColor(List<Color> colors, double position) {
    int index = (position * (colors.length - 1)).floor();
    double localPosition = (position * (colors.length - 1)) - index;
    return Color.lerp(colors[index], colors[index + 1], localPosition) ?? colors.last;
  }

  Color _calculateSliderColor(double progress) {
    final colors = [const Color(0xFFFFC75A), const Color(0xFF6DAFF9), const Color(0xFF31A7AE)];

    progress = progress.clamp(0.0, 1.0);

    double colorPosition = progress * (colors.length - 1);
    int index = colorPosition.floor();
    int nextIndex = (index + 1).clamp(0, colors.length - 1);

    double t = colorPosition - index;

    return Color.lerp(colors[index], colors[nextIndex], t) ?? colors.first;
  }

  double convertRadiusToSigma(double radius) {
    return radius * 0.57735 + 0.5;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class ArcProgressBar extends StatelessWidget {
  final double progress;
  final double strokeWidth;

  const ArcProgressBar({
    super.key,
    required this.progress,
    this.strokeWidth = 16,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcProgressPainter(
        progress: progress,
        backgroundColor: Colors.red,
        strokeWidth: strokeWidth,
        textStyle: TextStyle(color: Colors.red),
      ),
    );
  }
}
