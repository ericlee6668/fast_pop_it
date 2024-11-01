import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../widgets/text_neumorphic.dart';
import '../controllers/game_controller.dart';

class ScoreboardScore extends StatelessWidget {
  ScoreboardScore({super.key, required this.margin});
  double margin;

  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final double height = isPortrait?Get.size.width:Get.size.height;
    final GameController controller = Get.find();
    double size = (height - margin) * 0.20;
    controller.scoreBoxSize = size;

    double fontSize = size * 0.45;
    double textPadding = size * 0.10;
    return Positioned(
      top: isPortrait?200:height*0.06,
      right: 50,
      child: SizedBox(
        child: Stack(
          children: [
            Container(
              width: size,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha((255 * 0.33).toInt()),
                borderRadius: BorderRadius.circular(size / 4),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size * 0.10),
                    child: TextNeumorphic(
                      text: AppStrings.scoreString,
                      fontWidth: TextSizes.boardTextSize,
                      borderResult: false,
                    ),
                  ),
                  Obx(() {
                    if (controller.score.value.toString().length > 3) {
                      fontSize = size * 0.8;
                      textPadding = size * 0.15;
                    }
                    return SizedBox(
                      width: size,
                      child: Center(
                        child: TextNeumorphic(
                          text: controller.score.value.toString(),
                          fontWidth: TextSizes.boardTextSize,
                          borderResult: false,
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ),
            //Positioned(top: size + (size / 5), child: Spacer()),
            Obx(() {
              print("added ${controller.scoreAnimations.length}");
              return Stack(
                children: [...controller.scoreAnimations],
              );
            })
          ],
        ),
      ),
    );
  }
}

class ScoreAnimation extends StatefulWidget {
  final String scoreText;
  final Duration duration;
  final VoidCallback onEnd;
  final double size;

  const ScoreAnimation({
    super.key,
    required this.scoreText,
    this.duration = const Duration(milliseconds: 1000),
    required this.onEnd,
    required this.size,
  });

  @override
  _ScoreAnimationState createState() => _ScoreAnimationState();
}

class _ScoreAnimationState extends State<ScoreAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _positionAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: widget.duration, vsync: this)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.onEnd();
        }
      });

    _opacityAnimation = TweenSequence([
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.0), weight: 1),
    ]).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _positionAnimation = Tween<Offset>(
            begin: Offset(0, widget.size + (widget.size / 5)),
            end: Offset(0, widget.size / 2))
        .animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        RepaintBoundary(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Opacity(
                opacity: _opacityAnimation.value,
                child: Transform.translate(
                  offset: _positionAnimation.value,
                  child: child,
                ),
              );
            },
            child: SizedBox(
              width: widget.size,
              child: TextNeumorphic(
                text: widget.scoreText,
                textColor: const Color(0xFF70FFA7),
                fontWidth: TextSizes.scorePlusValueSize,
                borderResult: false,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ScoreCustomPainter extends CustomPainter {
  final String text;
  final double opacity;
  final double translateY;
  final TextStyle textStyle;

  ScoreCustomPainter({
    required this.text,
    required this.opacity,
    required this.translateY,
    required this.textStyle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final textSpan = TextSpan(
        text: text,
        style:
            textStyle.copyWith(color: textStyle.color?.withOpacity(opacity)));
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);
    final offset = Offset(
      (size.width - textPainter.width) / 2,
      (size.height - textPainter.height) / 2 + translateY,
    );

    canvas.save();
    canvas.translate(0, translateY);
    textPainter.paint(canvas, offset);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Here you could add logic to repaint only when necessary.
  }
}
