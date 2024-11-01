import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../data/asset_strings.dart';
import '../../../widgets/text_neumorphic.dart';
import '../controllers/game_controller.dart';

class GameOver extends StatelessWidget {
  GameOver({super.key});

  final GameController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() {
        return Visibility(
          visible: controller.gameOver.value,
          maintainAnimation: true,
          maintainState: true,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            opacity: controller.gameOver.value ? 1 : 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 8,
                sigmaY: 8,
              ),
              child: Container(
                width: controller.controller.isPortrait(context)
                    ? MediaQuery.of(context).size.height * 0.255
                    : MediaQuery.of(context).size.width * 0.255,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha((255 * 0.50).toInt()),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: TextNeumorphic(
                        text: "GAME OVER",
                        fontWidth: TextSizes.tittleMenuSize,
                        borderResult: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextNeumorphic(
                        text: "Score - ${controller.score.toString()}",
                        fontWidth: TextSizes.subTittleMenuSize,
                        borderResult: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextNeumorphic(
                        text: "Record - ${controller.scoreRecord.toString()}",
                        fontWidth: TextSizes.subTittleMenuSize,
                        borderResult: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Row(
                        children: [
                          const Spacer(),
                          SizedBox(
                            height: 20,
                            width: 20,
                            child: Image.asset(AssetStrings.popCoinImage),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                            child: TextNeumorphic(
                              text: "+ ${controller.scoreRecord.toString()}",
                              fontWidth: TextSizes.subTittleMenuSize,
                              borderResult: false,
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          controller.startGame();
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors
                                .gameColorsTheme[
                                    controller.gameThemeIndex.value]
                                .primary,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.yellowLight,
                                  spreadRadius: 2,
                                  blurRadius: 12)
                            ],
                          ),
                          child: Center(
                            child: TextNeumorphic(
                              text: AppStrings.playAgainsString,
                              fontWidth: TextSizes.bntMenuSize,
                              borderResult: false,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 20, right: 20, bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                          height: 40,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors
                                .gameColorsTheme[
                                    controller.gameThemeIndex.value]
                                .primary,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: AppColors.yellowLight,
                                  spreadRadius: 2,
                                  blurRadius: 12)
                            ],
                          ),
                          child: Center(
                            child: TextNeumorphic(
                              text: AppStrings.homeString,
                              fontWidth: TextSizes.bntMenuSize,
                              borderResult: false,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
