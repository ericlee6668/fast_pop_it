import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../widgets/text_neumorphic.dart';
import '../controllers/game_controller.dart';

class ScoreboardLevel extends StatelessWidget {
  ScoreboardLevel({super.key, required this.margin});
  double margin;
  @override
  Widget build(BuildContext context) {
   bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    final double height = isPortrait?Get.size.width:Get.size.height;
    double size = (height - margin) * 0.20;
    final GameController controller = Get.find();
    return Obx(() {
      return Positioned(
        top: isPortrait?200:height*0.06,
        left: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withAlpha((255 * 0.33).toInt()),
            borderRadius: BorderRadius.circular(size / 4),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size * 0.10),
                child: TextNeumorphic(
                  text: AppStrings.levelString,
                  fontWidth: TextSizes.boardTextSize,
                  borderResult: false,
                ),
              ),
              SizedBox(
                width: size,
                child: Center(
                  child: TextNeumorphic(
                    text: controller.level.value.toString(),
                    fontWidth: TextSizes.boardTextSize,
                    borderResult: false,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
