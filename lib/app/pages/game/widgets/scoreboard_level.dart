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
        top: isPortrait?100:height*0.06,
        left: 50,
        child: Row(
          children: [
            Text(
              "${AppStrings.levelString}:",
              style: TextStyle(
                  fontFamily: 'Dolphin',
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * TextSizes.levelScoreSize
              ),
            ),
            Center(
              child: Text(
                controller.level.value.toString(),
                style: TextStyle(
                    fontFamily: 'Dolphin',
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * TextSizes.levelScoreSize
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
