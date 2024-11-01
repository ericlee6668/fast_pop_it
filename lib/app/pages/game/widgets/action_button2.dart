import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../home/controllers/home_controller.dart';

class ActionButton2 extends StatelessWidget {
 final double size;
 final double? top;
 final double? bottom;
 final double? left;
 final double? right;
 final IconData icon;
 final Function onTap;

  const ActionButton2({
    super.key,
    required this.size,
    required this.icon,
    this.top,
    this.bottom,
    this.left,
    this.right,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: GetBuilder<HomeController>(builder: (context) {
        return GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size / 2),
              color: AppColors
                  .gameColorsTheme[controller.homeThemeIndex.value].secondary,
            ),
            child: Center(
              child: Icon(
                icon,
                color: HSLColor.fromColor(AppColors
                        .gameColorsTheme[controller.homeThemeIndex.value]
                        .primary)
                    .withLightness(0.43)
                    .toColor(),
                size: (size / 3) * 2,
              ),
            ),
          ),
        );
      }),
    );
  }
}
