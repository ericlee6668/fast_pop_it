import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pop_it/app/widgets/text_neumorphic.dart';

import '../data/app_colors.dart';
import '../data/asset_strings.dart';
import '../pages/home/controllers/home_controller.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final bool showImage;
  final VoidCallback onPressedCallback;

  const CustomElevatedButton({super.key, 
    required this.text,
    required this.showImage,
    required this.onPressedCallback,
  });

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    final HomeController controller = Get.find();
    final isPortrait =MediaQuery.of(context).orientation == Orientation.portrait;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            return AppColors
                .gameColorsTheme[controller.homeThemeIndex.value].darkPrimary;
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
              color: AppColors
                  .gameColorsTheme[controller.homeThemeIndex.value].tertiary,
              width: 2.0,
            ),
          ),
        ),
      ),
      onPressed: () {
        onPressedCallback();
      },
      child: showImage == true
          ? Container(
              alignment: Alignment.centerLeft,
              height: heightSize * 0.4 * 0.2,
              width: isPortrait?widthSize * 0.4 * 0.5:widthSize * 0.4 * 0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: heightSize * 0.4 * 0.2 * 0.5,
                    width: widthSize * 0.4 * 0.3 * 0.35,
                    child: Image.asset(AssetStrings.popCoinImage),
                  ),
                  const SizedBox(width: 8.0),
                  TextNeumorphic(
                    text: text,
                    fontWidth: 0.02,
                    borderResult: false,
                  ),
                ],
              ),
            )
          : Container(
              alignment: Alignment.center,
              height: heightSize * 0.4 * 0.2,
              width: widthSize * 0.4 * 0.3,
              child: TextNeumorphic(
                text: text,
                fontWidth: 0.02,
                borderResult: false,
              ),
            ),
    );
  }
}
