import 'package:animated_background/animated_background.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/di_logic.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_string.dart';
import '../../../widgets/left_corner.dart';
import '../../../widgets/right_corner.dart';
import '../../../widgets/text_neumorphic.dart';
import '../controllers/home_controller.dart';
import 'package:page_transition/page_transition.dart';
import 'home_view.dart';

class SplashView extends GetView<HomeController> {
  const SplashView({super.key});
  DILogic get logic => Get.find<DILogic>();
  @override
  Widget build(BuildContext context) {
    // This is set to use MediaQUery to definy the relative percentage of the screen for the width:
    final widthSize = MediaQuery.of(context).size.width;

    // This is set to use MediaQUery to definy the relative percentage of the screen for the height:
    final heightSize = MediaQuery.of(context).size.height;

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
                cornerColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value].primary,
                height: heightSize * 0.4,
                width: widthSize * 0.2,
              ),
              Center(
                child: AnimatedSplashScreen(
                  duration: 3100,
                  backgroundColor: Colors.transparent,
                  splash: TextNeumorphic(
                    intensityResult: 1,
                    borderResult: true,
                    fontWidth: 0.08,
                    text: AppStrings.gameNameString,
                  ),
                  nextScreen: const HomeView(),
                  nextRoute: '/home',
                  pageTransitionType: PageTransitionType.fade,
                  splashTransition: SplashTransition.scaleTransition,

                ),
              ),
              // const HomeView(),
              // Obx(() {
              //   if (logic.netWorkOn.value) {
              //     return const BaseBView();
              //   } else {
              //     return const SizedBox();
              //   }
              // }),
              // Obx(() {
              //   if (logic.netWorkOn.value) {
              //     return BaseADView();
              //   } else {
              //     return const SizedBox();
              //   }
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
