import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../widgets/text_neumorphic.dart';
import '../controllers/game_controller.dart';

class GoBackHome extends StatelessWidget {
  GoBackHome({super.key});

  final GameController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() {
        return Visibility(
          visible: controller.goBackHome.value,
          maintainAnimation: true,
          maintainState: true,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastOutSlowIn,
            opacity: controller.goBackHome.value ? 1 : 0,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 8,
                sigmaY: 8,
              ),
              child: Container(
                width: controller.controller.isPortrait(context)
                    ? MediaQuery.of(context).size.width * 0.8
                    : MediaQuery.of(context).size.width * 0.255,
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha((255 * 0.50).toInt()),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextNeumorphic(
                        text: AppStrings.exitString,
                        fontWidth: TextSizes.tittleMenuSize,
                        borderResult: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: TextNeumorphic(
                        text: AppStrings.exitQuestionString,
                        fontWidth: TextSizes.subTittleMenuSize,
                        borderResult: false,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 20.0, left: 20, right: 20),
                      child: GestureDetector(
                        onTap: () {
                          controller.goBackHome.value = false;
                          Get.back();
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
                              text: AppStrings.yesString,
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
                          controller.goBackHome.value = false;
                          controller.resume();
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
                              text: AppStrings.noString,
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
