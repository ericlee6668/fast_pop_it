import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../widgets/shop_items.dart';
import '../controllers/game_controller.dart';

class GameButtonNew extends StatelessWidget {
  GameButtonNew({
    super.key,
    required this.popItBodyHeight,
    required this.borderWidth,
    required this.borderButtonWidth,
    required this.size,
    required this.index,
  });

  double popItBodyHeight;
  double borderWidth;
  double borderButtonWidth;
  double size;
  int index;

  @override
  Widget build(BuildContext context) {
    final GameController controller = Get.find();
    double buttonSize = size-5;
    double buttonMaxSize = buttonSize + (borderWidth * 2);

    //max button area to shadow
    return SizedBox(
      height: buttonMaxSize,
      width: buttonMaxSize,
      child: Stack(
        children: [
          Center(
            // like as button border
            child: Container(
              height: (buttonMaxSize - (borderWidth * 2)),
              width: buttonMaxSize,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors
                    .gameColorsTheme[controller.gameThemeIndex.value].secondary,
              ),
            ),
          ),
          Center(
            // like as button border
            child: Obx(() {
              Color borderColor = HSLColor.fromColor(AppColors
                      .gameColorsTheme[controller.gameThemeIndex.value].darkPrimary)
                  .withLightness(0.45)
                  .toColor();

              if (controller.gameButtons[index].value.clicked.value) {
                borderColor = AppColors
                    .gameColorsTheme[controller.gameThemeIndex.value].darkPrimary;
              }
              return Container(
                height: (buttonMaxSize - (borderWidth * 3)),
                width: buttonMaxSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: borderColor,
                ),
                child: controller.gameButtons[index].value.clicked.value
                    ? null
                    : Image.asset('assets/pop_item_normal.png'),
              );
            }),
          ),
          Center(
            child: Obx(() {
              Color buttonColor = AppColors
                  .gameColorsTheme[controller.gameThemeIndex.value].secondary;
              Color buttonShadow = HSLColor.fromColor(AppColors
                      .gameColorsTheme[controller.gameThemeIndex.value]
                      .secondary)
                  .withLightness(0.68)
                  .toColor()
                  .withAlpha(170);
              double buttonShadowRadius = borderWidth * (-1);
              double buttonBlurRadius = borderWidth;
              if (controller.gameButtons[index].value.clicked.value) {
                buttonColor = AppColors
                    .gameColorsTheme[controller.gameThemeIndex.value].primary;
                buttonShadow = HSLColor.fromColor(AppColors
                        .gameColorsTheme[controller.gameThemeIndex.value]
                        .secondary)
                    .withLightness(0.2)
                    .toColor()
                    .withAlpha(120);
                buttonShadowRadius = (borderWidth * 2) * (-1);
                buttonBlurRadius = borderWidth * 2;
              } else if (controller.gameButtons[index].value.activated.value &&
                  controller.playing.value) {
                // buttonColor = AppColors.white;
                // buttonColor = Colors.red;
              }
              return AnimatedContainer(
                duration: Duration(milliseconds: controller.animationTime),
                height: (buttonMaxSize -
                    (borderWidth * 2) -
                    (borderButtonWidth * 2)),
                width: buttonMaxSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    // BoxShadow(color: buttonShadow),
                    // BoxShadow(
                    //   // set to white on light the led
                    //   color: buttonColor,
                    //   spreadRadius: buttonShadowRadius,
                    //   blurRadius: buttonBlurRadius,
                    // ),
                  ],
                ),
                child: Visibility(
                    visible:
                        controller.gameButtons[index].value.activated.value &&
                            controller.playing.value &&
                            !controller.gameButtons[index].value.clicked.value,
                    child: Image.asset(ShopItem
                        .shopItems[controller.gameThemeIndex.value].iconUrl2)),
              );
            }),
          ),
          Center(
            // the rela BUTTON
            child: Obx(() {
              bool ledOn = false;
              if ((!controller.gameButtons[index].value.clicked.value &&
                      controller.gameButtons[index].value.activated.value &&
                      controller.playing.value) ||
                  controller.gameButtons[index].value.onLed.value) {
                ledOn = true;
              }
              return GestureDetector(
                onTap: () {
                  //controller.led.value = !controller.led.value;
                  controller.gameButtonClicked(index);
                },
                child: AnimatedOpacity(
                  opacity: ledOn ? 1 : 0.0,
                  duration: Duration(milliseconds: controller.animationTime),
                  child: Container(
                    height: (buttonMaxSize - (borderWidth * 4)),
                    width: buttonMaxSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: AppColors.gameRedLed,
                      boxShadow: [
                        BoxShadow(
                          color: HSLColor.fromColor(AppColors.gameRedLed)
                              .withLightness(0.6)
                              .toColor(),
                          spreadRadius: borderWidth * 2,
                          blurRadius: borderWidth * 2,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
