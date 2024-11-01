import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../controllers/game_controller.dart';

class ActionButton extends StatelessWidget {
  double size;
  double top;
  double? left;
  double? right;
  IconData icon;
  Function onTap;

  ActionButton({
    super.key,
    required this.size,
    required this.top,
    required this.icon,
    this.left,
    this.right,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final GameController controller = Get.find();
    return Positioned(
      top: top,
      left: left,
      right: right,
      child: GetBuilder<GameController>(builder: (context) {
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
                  .gameColorsTheme[controller.gameThemeIndex.value].secondary,
            ),
            child: Center(
              child: Icon(
                icon,
                color: HSLColor.fromColor(AppColors
                        .gameColorsTheme[controller.gameThemeIndex.value]
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
