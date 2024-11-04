import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/game/controllers/game_controller.dart';

class ExplosionEvent {}

class ExplosionWidget extends StatefulWidget {
  final int particleCount;
  final Widget child;
  final Color backgroundColor;
  final bool canTap;

  const ExplosionWidget({
    super.key,
    this.particleCount = 150, // 默认粒子数量
    required this.child, // 点击爆炸的子控件
    this.backgroundColor = Colors.transparent,
    this.canTap = true, // 能否点击
  });

  @override
  _ExplosionWidgetState createState() => _ExplosionWidgetState();
}

class _ExplosionWidgetState extends State<ExplosionWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Particle> particles = [];
  final GameController _gameController = Get.find();
  var visible = false.obs;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )
      ..addListener(() {
        setState(() {
          // 更新所有粒子状态
          for (var particle in particles) {
            particle.update();
          }

          // 移除所有消失的粒子
          particles.removeWhere((particle) => particle.isDead);

          // 停止动画如果所有粒子都已经消失
          if (particles.isEmpty) {
            _controller.stop();
          }
        });
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.stop();
          visible.value = false;
        }
        print('expose_widget=>$status');
      });
    ever(_gameController.level, (value) {
      if (value > 1) {
        visible.value = true;
        _explode(const Offset(50, 40));
      }
      print('game level=>$value');
    });
  }

  void _explode(Offset position) {
    particles.clear(); // 清空旧粒子
    _controller.stop();
    particles.addAll(List.generate(
        widget.particleCount, (index) => Particle(position))); // 生成新粒子
    _controller.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) =>
          widget.canTap ? _explode(details.localPosition) : null,
      child: Obx(
        () => Visibility(
          visible: visible.value,
          child: Stack(
            children: [
              // 点击的子控件
              widget.child,
              // 背景绘制粒子
              CustomPaint(
                painter: ExplosionPainter(particles),
                child: Container(color: widget.backgroundColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Particle {
  Offset position;
  Color color;
  double size;
  double speed;
  double direction;
  double life = 1.0; // 粒子生命周期，1.0 为最大值，0 为消失

  Particle(this.position)
      : color = Colors.primaries[Random().nextInt(Colors.primaries.length)],
        size = Random().nextDouble() * 10 + 1,
        speed = Random().nextDouble() * 2 + 2,
        direction = Random().nextDouble() * 2 * pi;

  // 更新粒子的状态
  void update() {
    if (life > 0) {
      life -= 0.02; // 随时间减少生命周期
      // print('expose_widget=>$life');
      final dx = cos(direction) * speed;
      final dy = sin(direction) * speed;
      position = Offset(position.dx + dx, position.dy + dy);
    }
  }

  // 判断粒子是否已经消失
  bool get isDead => life <= 0;
}

class ExplosionPainter extends CustomPainter {
  List<Particle> particles;

  ExplosionPainter(this.particles);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // 仅绘制活着的粒子
    for (var particle in particles) {
      if (!particle.isDead) {
        paint.color = particle.color.withOpacity(particle.life); // 随着时间透明度减小
        canvas.drawCircle(particle.position, particle.size, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
