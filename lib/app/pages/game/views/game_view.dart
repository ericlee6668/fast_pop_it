
import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../widgets/explode_widget.dart';
import '../../home/dialogs/settings.dart';
import '../controllers/game_controller.dart';
import '../widgets/action_button.dart';
import '../widgets/game_control.dart';
import '../widgets/game_over.dart';
import '../widgets/go_back_home.dart';
import '../widgets/restart_game.dart';
import '../widgets/scoreboard_level.dart';
import '../widgets/scoreboard_score.dart';
import '../widgets/vibration_animation.dart';

class GameView extends GetView<GameController> {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait  = MediaQuery.of(context).orientation == Orientation.portrait;
    final heightSize = isPortrait? MediaQuery.of(context).size.width:MediaQuery.of(context).size.height;
    final controller = Get.put(GameController());
    double actionButtonSize = 42;
    double actionButtonSpace = heightSize * 0.06;
    double actionButtonSpaceTop = isPortrait? actionButtonSpace+30:actionButtonSpace;

    return Scaffold(
      backgroundColor:
          AppColors.gameColorsTheme[controller.gameThemeIndex.value].primary,
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: const ParticleOptions(
            baseColor: Colors.white,
            minOpacity: 0.05,
            maxOpacity: 0.25,
            particleCount: 50,
            spawnMinSpeed: 50,
            spawnMaxSpeed: 100,
          ),
        ),
        vsync: controller,
        child: Stack(
          children: [
            Center(
              child: Stack(
                children: [
                  VibrationAnimationPage(
                    controller: controller.controlAnimationController,
                    child: Obx(
                      () => IgnorePointer(
                        ignoring: controller.gameOver.value,
                        child: GameControl(
                          onSized: (size) {},
                          margin: 20,
                          controller: controller,
                          screenHeight:
                              controller.controller.isPortrait(context)
                                  ? Get.width
                                  : Get.height,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            ScoreboardLevel(margin: 20),
            ScoreboardScore(margin: 20),
            GameOver(),
            RestartGame(),
            GoBackHome(),
            Positioned(
              right: 50,
              top: 180,
              child: ExplosionWidget(
                canTap: true,
                child: Container(
                    width: 220, height: 120, color: Colors.transparent),
              ),
            ),
            ActionButton(
              left: actionButtonSpace,
              top: actionButtonSpaceTop,
              size: actionButtonSize,
              icon: Icons.arrow_back,
              onTap: () {
                controller.pause();
                Get.back();
              },
            ),
            ActionButton(
              icon: Icons.volume_up_outlined,
              size: actionButtonSize,
              left: (actionButtonSpace * 2) + actionButtonSize,
              top: actionButtonSpaceTop,
              onTap: () {
                Get.dialog(
                  const Dialog(
                    backgroundColor: Colors.transparent,
                    child: Settings(),
                  ),
                );
              },
            ),
            ActionButton(
              icon: Icons.home_outlined,
              size: actionButtonSize,
              right: actionButtonSpace,
              top: actionButtonSpaceTop,
              onTap: () {
                controller.pause();
                controller.goBackHome.value = true;
              },
            ),
            ActionButton(
              icon: Icons.refresh,
              size: actionButtonSize,
              right: (actionButtonSpace * 2) + actionButtonSize,
              top: actionButtonSpaceTop,
              onTap: () {
                controller.pause();
                controller.restartGame.value = true;
              },
            ),
          ],
        ),
      ),
    );
  }
}
