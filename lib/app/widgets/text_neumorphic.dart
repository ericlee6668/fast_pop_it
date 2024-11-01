import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/app_colors.dart';
import '../pages/home/controllers/home_controller.dart';

class TextNeumorphic extends StatelessWidget {
  final String text;
  final double fontWidth;
  final bool borderResult;
  final double? borderWidth;
  final double? intensityResult;
  final String? neumorphicFontFamily;
  final Color? textColor;
  final Color? borderColor;

  const TextNeumorphic({super.key, 
    this.borderWidth,
    this.intensityResult,
    this.neumorphicFontFamily,
    this.textColor,
    this.borderColor,
    required this.text,
    required this.fontWidth,
    required this.borderResult,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();

    return Stack(
      children: [
        //
        // if (borderResult)
        //   Text(
        //     text,
        //     style: TextStyle(
        //       fontFamily: neumorphicFontFamily ?? 'UbuntuTitling-Bold',
        //       fontSize: controller.isPortrait(context)
        //           ? MediaQuery.of(context).size.width * fontWidth
        //           : MediaQuery.of(context).size.height * fontWidth,
        //       foreground: Paint()
        //         ..style = PaintingStyle.stroke
        //         ..strokeWidth = borderWidth ?? 2
        //         ..color = borderColor ??
        //             AppColors.gameColorsTheme[controller.homeThemeIndex.value]
        //                 .tertiary,
        //     ),
        //   ),
        //
        if (borderResult)
        Text(
          text,
          style: TextStyle(
            fontFamily: neumorphicFontFamily ?? 'UbuntuTitling-Bold',
            fontSize:  controller.isPortrait(context)
                ? MediaQuery.of(context).size.width * fontWidth
                : MediaQuery.of(context).size.height * fontWidth,
            color: textColor ??
                AppColors.gameColorsTheme[controller.homeThemeIndex.value].text,
            shadows: [
              if (intensityResult != null && intensityResult! > 0)
                Shadow(
                  offset: const Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(intensityResult!),
                ),
            ],
          ),
        )
        else
        Text(
          text,
          style: TextStyle(
            fontFamily: neumorphicFontFamily ?? 'UbuntuTitling-Bold',
            fontSize:  controller.isPortrait(context)
                    ? MediaQuery.of(context).size.height * fontWidth
                    : MediaQuery.of(context).size.width * fontWidth,
            color: textColor ??
                AppColors.gameColorsTheme[controller.homeThemeIndex.value].text,
            shadows: [
              if (intensityResult != null && intensityResult! > 0)
                Shadow(
                  offset: const Offset(2, 2),
                  blurRadius: 4,
                  color: Colors.black.withOpacity(intensityResult!),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
