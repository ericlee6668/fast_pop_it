import 'package:animated_background/animated_background.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:pop_it/app/pages/home/views/sc_view.dart';
import 'package:pop_it/app/pages/home/views/us.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../data/game_modes.dart';
import '../../../widgets/button_image_default.dart';
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
              particleCount: 50,
              spawnMinSpeed: 50,
              spawnMaxSpeed: 100,
            ),
          ),
          vsync: controller,
          child: Stack(
            children: [
              controller.homeThemeIndex.value == 0
                  ? Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset('assets/bg_right.png',
                          height: heightSize * 0.8),
                    )
                  : RightCorner(
                      height: heightSize * 0.8,
                      width: widthSize * 0.4,
                      cornerColor: AppColors
                          .gameColorsTheme[controller.homeThemeIndex.value]
                          .primary,
                    ),
              controller.homeThemeIndex.value == 0
                  ? Image.asset(
                      'assets/bg_left.png',
                      width: widthSize * 0.2,
                    )
                  : LeftCorner(
                      cornerColor: AppColors
                          .gameColorsTheme[controller.homeThemeIndex.value]
                          .primary,
                      height: heightSize * 0.4,
                      width: widthSize * 0.2,
                    ),

              // Visibility(child: CustomPaint(painter: RPSCustomPainter(),)),
              RankListIcon(
                elementColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value]
                    .background,
                top: heightSize * 0.06,
                right: 92.w,
                size: 26.w,
              ),
              ActionButton2(
                isIcon:controller.homeThemeIndex.value!=0 ,
                icon: Icons.shopping_cart_outlined,
                size: 26.w,
                right: 50.w,
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
                isIcon:controller.homeThemeIndex.value!=0 ,
                icon: Icons.settings,
                size:  26.w,
                right: 10.w,
                top: heightSize * 0.06,
                onTap: () {
                  FlameAudio.play('click_2.mp3');
                  Get.dialog(
                    const Dialog(
                      backgroundColor: Colors.transparent,
                      child: Settings(),
                    ),
                  );
                  // Navigator.push(context, CupertinoPageRoute(builder: (context) {
                  //   return SciFiHomePage();
                  // }));
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
                      // child: TextNeumorphic(
                      //   fontWidth: TextSizes.tittleSize,
                      //   borderResult: true,
                      //   intensityResult: 1,
                      //   text: AppStrings.gameNameString,
                      // ),
                      child: Image.asset('assets/popit_logo.png'),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        bottom: heightSize * 0.01,
                      ),
                      child: controller.homeThemeIndex.value == 0
                          ? ButtonImageDefault(
                              buttonBorderWidth: 1,
                              buttonFontWidth: TextSizes.configTittleSize,
                              buttonTextBorder: true,
                              buttonTextIntensity: 0.6,
                              buttonText: controller.classicName.toString(),
                              onPressedCallback: () {
                                FlameAudio.play('click_1.mp3');
                                Get.to(() => const GameView(), arguments: {
                                  "mode": GameModes.CLASSIC_MODE
                                });
                              },
                            )
                          : ButtonNeumorphic(
                              width: 0.5,
                              height:
                                  controller.isPortrait(context) ? 0.1 : 0.18,
                              buttonBorderWidth: 1,
                              buttonFontWidth: TextSizes.configTittleSize,
                              buttonTextBorder: true,
                              buttonTextIntensity: 0.6,
                              buttonText: controller.classicName.toString(),
                              onPressedCallback: () {
                                FlameAudio.play('click_1.mp3');
                                Get.to(() => const GameView(), arguments: {
                                  "mode": GameModes.CLASSIC_MODE
                                });
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
                      child: controller.homeThemeIndex.value == 0
                          ? ButtonImageDefault(
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
                            )
                          : ButtonNeumorphic(
                              width: 0.5,
                              height:
                                  controller.isPortrait(context) ? 0.1 : 0.18,
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
                      child: controller.homeThemeIndex.value == 0
                          ? ButtonImageDefault(
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
                            )
                          : ButtonNeumorphic(
                              width: 0.5,
                              height:
                                  controller.isPortrait(context) ? 0.1 : 0.18,
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

              Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const UsPage(),
                          ),
                        );
                      },
                      child: Padding(
                        padding:  EdgeInsets.only(bottom: 20.h),
                        child: Text(
                          AppStrings.aboutString,
                          style: TextStyle(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white,
                              fontSize: controller.isPortrait(context)
                                  ? MediaQuery.of(context).size.height *
                                      TextSizes.bntMenuSize
                                  : MediaQuery.of(context).size.width *
                                      TextSizes.bntMenuSize,
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: const Offset(2, 2),
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.9),
                              ),
                            ],
                          ),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
