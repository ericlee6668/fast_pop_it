import 'package:flutter/material.dart';

class GameControlDraw extends CustomPainter {
  double shadowWidth;
  Color backgroundColor;
  Color borderColor;
  double borderWidth;
  GameControlDraw({
    required this.shadowWidth,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // 背景渐变填充
    var gradientBackground = Paint()
      ..style = PaintingStyle.fill
      ..shader = LinearGradient(
        colors: [
          HSLColor.fromColor(backgroundColor).withLightness(0.6).toColor(),
          HSLColor.fromColor(backgroundColor).withLightness(0.6).toColor(),
          HSLColor.fromColor(backgroundColor).withLightness(0.58).toColor(),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // 内部填充
    var paintFill = Paint()
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, shadowWidth)
      ..shader = RadialGradient(
        colors: [
          backgroundColor.withOpacity(0.6),
          backgroundColor.withOpacity(0.9),
        ],
        center: Alignment.center,
        radius: 1.0,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    // 渐变边框
    var paintStroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..shader = LinearGradient(
        colors: [
          HSLColor.fromColor(borderColor).withLightness(0.65).toColor(),
          HSLColor.fromColor(borderColor).withLightness(0.7).toColor(),
          HSLColor.fromColor(borderColor).withLightness(0.5).toColor(),
        ],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    var path = Path();
    path.moveTo(size.width * 0.36, 0);
    path.lineTo(size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.97, size.height * 0.02, size.width, size.height * 0.46);
    path.lineTo(size.width, size.height * 0.63);

    double bottomDetailY = size.height * 0.923;
    path.quadraticBezierTo(size.width * 0.99, size.height * 0.97, size.width * 0.75, size.height);
    path.quadraticBezierTo(size.width * 0.7, size.height * 0.918, size.width * 0.5, bottomDetailY);
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.918, size.width * 0.25, size.height);
    path.quadraticBezierTo(size.width * 0.01, size.height * 0.97, 0, size.height * 0.63);
    path.lineTo(0, size.height * 0.46);
    path.quadraticBezierTo(size.width * 0.03, size.height * 0.02, size.width * 0.36, 0);

    // 绘制背景和填充
    canvas.drawPath(path, gradientBackground);
    canvas.drawPath(path, paintFill);
    canvas.clipPath(path);

    // 绘制边框
    canvas.drawPath(path, paintStroke);

    // 左侧细节路径
    var leftDetailPath = Path();
    leftDetailPath.moveTo(size.width * 0.03, size.height * 0.27);
    leftDetailPath.quadraticBezierTo(size.width * 0.07, size.height * 0.6, size.width * 0.011, size.height * 0.76);
    canvas.drawPath(leftDetailPath, paintStroke);

    // 右侧细节路径
    var rightDetailPath = Path();
    rightDetailPath.moveTo(size.width * 0.97, size.height * 0.27);
    rightDetailPath.quadraticBezierTo(size.width * 0.93, size.height * 0.6, size.width * 0.99, size.height * 0.76);
    canvas.drawPath(rightDetailPath, paintStroke);

    // 添加阴影效果
    canvas.drawShadow(path, Colors.black.withOpacity(0.3), 8.0, true);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}