import 'package:animated_background/animated_background.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/app_colors.dart';
import '../../../data/storage_keys.dart';
import '../../../widgets/explode_widget.dart';
import '../../home/dialogs/setting_dialog.dart';
import '../../home/dialogs/settings.dart';
import '../controllers/game_controller.dart';
import '../widgets/action_button.dart';
import '../widgets/game_control.dart';
import '../widgets/game_over.dart';
import '../widgets/go_back_home.dart';
import '../widgets/restart_game.dart';
import '../widgets/scoreboard_best.dart';
import '../widgets/scoreboard_level.dart';
import '../widgets/scoreboard_score.dart';
import '../widgets/vibration_animation.dart';

class GameView extends GetView<GameController> {
  const GameView({super.key});

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    final heightSize = isPortrait
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.height;
    final controller = Get.put(GameController());
    double actionButtonSize = 26.w;
    double actionButtonSpace = heightSize * 0.06;
    double actionButtonSpaceTop =
        isPortrait ? actionButtonSpace + 30 : actionButtonSpace;
    bool isTablet = MediaQuery.of(context).size.shortestSide > 600;
    return Scaffold(
      backgroundColor:
          AppColors.gameColorsTheme[controller.gameThemeIndex.value].primary,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(isTablet
                    ? 'assets/game_pad_bg.webp'
                    : 'assets/game_bg.webp'))),
        child: AnimatedBackground(
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
              Container(
                alignment: Alignment.bottomCenter,
                padding: const EdgeInsets.only(bottom: 200),
                child: VibrationAnimationPage(
                  controller: controller.controlAnimationController,
                  child: Obx(
                    () => IgnorePointer(
                      ignoring: controller.gameOver.value,
                      child: GameControl(
                        onSized: (size) {},
                        margin: isTablet ? 80 : 10,
                        controller: controller,
                        screenHeight: controller.controller.isPortrait(context)
                            ? Get.width - 30
                            : Get.height,
                      ),
                    ),
                  ),
                ),
              ),
              ScoreboardLevel(margin: 20),
              Visibility(visible: false, child: ScoreboardBest(margin: 20)),
              ScoreboardScore(margin: 20),
              GameOver(),
              RestartGame(),
              GoBackHome(),
              // Positioned(
              //   left: 52.w,
              //   top: 250.w,
              //   child: ExplosionWidget(
              //     canTap: true,
              //     child: Container(
              //         width: 220, height: 220, color: Colors.transparent),
              //   ),
              // ),
              Positioned(
                left: 182.w,
                top: 250.w,
                child: ConfettiWidget(
                  numberOfParticles: 30,
                  minBlastForce: 10,
                  maxBlastForce: 20,
                  blastDirectionality: BlastDirectionality.explosive,
                  confettiController: controller.confettiController,
                  gravity: 0.7,
                ),
              ),
              ActionButton(
                left: actionButtonSpace,
                bottom: actionButtonSpaceTop,
                size: actionButtonSize,
                icon: Icons.arrow_back,
                isIcon: controller.gameThemeIndex.value == -1 ? true : false,
                onTap: () {
                  controller.pause();
                  Get.back();
                },
              ),
              ActionButton(
                icon: Icons.refresh,
                size: actionButtonSize,
                left: (actionButtonSpace * 2) + actionButtonSize,
                isIcon: controller.gameThemeIndex.value == -1 ? true : false,
                bottom: actionButtonSpaceTop,
                onTap: () {
                  controller.pause();
                  controller.restartGame.value = true;
                },
              ),
              ActionButton(
                icon: Icons.home_outlined,
                size: actionButtonSize,
                right: actionButtonSpace,
                bottom: actionButtonSpaceTop,
                isIcon: controller.gameThemeIndex.value == -1 ? true : false,
                onTap: () {
                  controller.pause();
                  controller.goBackHome.value = true;
                },
              ),
              ActionButton(
                icon: Icons.volume_up_outlined,
                size: actionButtonSize,
                right: (actionButtonSpace * 2) + actionButtonSize,
                bottom: actionButtonSpaceTop,
                isIcon: controller.gameThemeIndex.value == -1 ? true : false,
                onTap: () {
                  Get.dialog(
                    const SettingDialog(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
