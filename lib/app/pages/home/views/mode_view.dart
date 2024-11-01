import 'package:animated_background/animated_background.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/game_modes.dart';
import '../../../widgets/button_neumorphic.dart';
import '../../../widgets/left_corner.dart';
import '../../../widgets/right_corner.dart';
import '../../game/views/game_view.dart';
import '../controllers/home_controller.dart';


class ModeView extends GetView<HomeController> {
  const ModeView({super.key});

  @override
  Widget build(BuildContext context) {
    // This is set to use MediaQUery to definy the relative percentage of the screen for the width:
    final widthSize = MediaQuery.of(context).size.width;
    // This is set to use MediaQUery to definy the relative percentage of the screen for the height:
    final heightSize = MediaQuery.of(context).size.height;
    final HomeController controller = Get.find();

    return Obx(
      () => Scaffold(
        backgroundColor: AppColors
            .gameColorsTheme[controller.homeThemeIndex.value].background,
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options: const ParticleOptions(
              baseColor: Colors.white,
              minOpacity: 0.05,
              maxOpacity: 0.25,
              particleCount: 15,
              spawnMinSpeed: 50,
              spawnMaxSpeed: 100,
            ),
          ),
          vsync: controller,
          child: Stack(
            children: [
              RightCorner(
                height: heightSize * 0.8,
                width: widthSize * 0.4,
                cornerColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value].primary,
              ),
              LeftCorner(
                height: heightSize * 0.4,
                width: widthSize * 0.2,
                cornerColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value].primary,
              ),
              Positioned(
                  left: 50,
                  top: 30,
                  child: InkWell(
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white38,
                      size: 30,
                    ),
                    onTap:(){
                      Get.back();
                    },
                  )),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: heightSize * 0.01,
                      ),
                      child: ButtonNeumorphic(
                        width: 0.5,
                        height: 0.2,
                        buttonBorderWidth: 1,
                        buttonFontWidth: TextSizes.mainBtnSize,
                        buttonTextBorder: true,
                        buttonTextIntensity: 0.6,
                        buttonText: controller.classicName.toString(),
                        onPressedCallback: () {
                          FlameAudio.play('click_1.mp3');
                          Get.to(() => const GameView(),
                              arguments: {"mode": GameModes.CLASSIC_MODE});
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: heightSize * 0.01,
                      ),
                      child: ButtonNeumorphic(
                        width: 0.5,
                        height: 0.2,
                        buttonBorderWidth: 1,
                        buttonFontWidth: TextSizes.mainBtnSize,
                        buttonTextBorder: true,
                        buttonTextIntensity: 0.6,
                        buttonText: controller.scoreName.toString(),
                        onPressedCallback: () {
                          FlameAudio.play('click_1.mp3');
                          Get.to(() => const GameView(),
                              arguments: {"mode": GameModes.SCORE_MODE});
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: heightSize * 0.01,
                      ),
                      child: ButtonNeumorphic(
                        width: 0.5,
                        height: 0.2,
                        buttonBorderWidth: 1,
                        buttonFontWidth: TextSizes.mainBtnSize,
                        buttonTextBorder: true,
                        buttonTextIntensity: 0.6,
                        buttonText: controller.memoryName.toString(),
                        onPressedCallback: () {
                          FlameAudio.play('click_1.mp3');
                          Get.to(() => const GameView(),
                              arguments: {"mode": GameModes.MEMORY_MODE});
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
