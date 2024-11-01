import 'package:animated_background/animated_background.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pop_it/app/pages/home/views/us.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../data/game_modes.dart';
import '../../../widgets/button_neumorphic.dart';
import '../../../widgets/left_corner.dart';
import '../../../widgets/rank_list.dart';
import '../../../widgets/right_corner.dart';
import '../../../widgets/text_neumorphic.dart';
import '../../game/views/game_view.dart';
import '../../game/widgets/action_button2.dart';
import '../controllers/home_controller.dart';
import '../dialogs/settings.dart';
import '../dialogs/shop.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});



  @override
  Widget build(BuildContext context) {
    // This is set to use MediaQUery to definy the relative percentage of the screen for the width:
    final widthSize = MediaQuery.of(context).size.width;

    // This is set to use MediaQUery to definy the relative percentage of the screen for the height:
    final heightSize = MediaQuery.of(context).size.height;

    // WidgetsBinding.instance.addPostFrameCallback((callback){
    //   Get.dialog(
    //     const Dialog(
    //       child: SwitchNotice(),
    //     ),
    //   );
    // });
    return Obx(
      () => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors
            .gameColorsTheme[controller.homeThemeIndex.value].background,
        body: AnimatedBackground(
          behaviour: RandomParticleBehaviour(
            options: const ParticleOptions(
              baseColor: Colors.white,
              minOpacity: 0.05,
              maxOpacity: 0.25,
              particleCount: 30,
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
                cornerColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value].primary,
                height: heightSize * 0.4,
                width: widthSize * 0.2,
              ),
              // AdsRemoveIcon(
              //   elementColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].background,
              //   height: widthSize * 0.05,
              //   width: heightSize * 0.1,
              // ),
              // Visibility(child: CustomPaint(painter: RPSCustomPainter(),)),
              RankListIcon(
                elementColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value]
                    .background,
                top: heightSize * 0.06,
                right: 155,
              ),
              ActionButton2(
                icon: Icons.shopping_cart_outlined,
                size: 42,
                right: 90,
                top: heightSize * 0.06,
                onTap: () {
                  FlameAudio.play('click_2.mp3');
                  Get.dialog(
                    const Dialog(
                      backgroundColor: Colors.transparent,
                      child: Shop(),
                    ),
                  );
                },
              ),
              ActionButton2(
                icon: Icons.settings,
                size: 42,
                right: 25,
                top: heightSize * 0.06,
                onTap: () {
                  FlameAudio.play('click_2.mp3');
                  Get.dialog(
                    const Dialog(
                      backgroundColor: Colors.transparent,
                      child: Settings(),
                    ),
                  );
                },
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: controller.isPortrait(context) ? 100 : 10,
                      ),
                      child: TextNeumorphic(
                        fontWidth: TextSizes.tittleSize,
                        borderResult: true,
                        intensityResult: 1,
                        text: AppStrings.gameNameString,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: heightSize * 0.01,
                      ),
                      child: ButtonNeumorphic(
                        width: 0.5,
                        height: controller.isPortrait(context) ? 0.1 : 0.18,
                        buttonBorderWidth: 1,
                        buttonFontWidth: TextSizes.configTittleSize,
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
                        height: controller.isPortrait(context) ? 0.1 : 0.18,
                        buttonBorderWidth: 1,
                        buttonFontWidth: TextSizes.configTittleSize,
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
                        height: controller.isPortrait(context) ? 0.1 : 0.18,
                        buttonBorderWidth: 1,
                        buttonFontWidth: TextSizes.configTittleSize,
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

              Positioned(
                  bottom: 20,
                  left: 50,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UsPage(),
                          ),
                        );
                      },
                      child: Text(
                        'About us',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: controller.isPortrait(context)
                                ? MediaQuery.of(context).size.height *
                                    TextSizes.bntMenuSize
                                : MediaQuery.of(context).size.width *
                                    TextSizes.bntMenuSize),
                      ))),

            ],
          ),
        ),
      ),
    );
  }
}
