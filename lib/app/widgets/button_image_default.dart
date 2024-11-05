import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/app_colors.dart';
import '../pages/home/controllers/home_controller.dart';

class ButtonImageDefault extends StatelessWidget {
  final String? buttonText;
  final double? buttonTextSize;
  final double? buttonBorder;
  final double? buttonBorderWidth;
  final double? buttonTextIntensity;
  final VoidCallback? onPressedCallback;

  const ButtonImageDefault({super.key, 
    this.buttonText,
    this.buttonTextSize,
    this.onPressedCallback,
    this.buttonBorder,
    this.buttonBorderWidth,
    this.buttonTextIntensity,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return GestureDetector(
      onTap: onPressedCallback,
      child: Container(
        height: 55.w,
        width: 220.h,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/btn_bg.png'),fit: BoxFit.fill)
        ),
        child: Text(
                buttonText ?? '',
                style: TextStyle(
                  fontSize: buttonTextSize??18.sp,
                  color: AppColors
                      .gameColorsTheme[controller.homeThemeIndex.value]
                      .text,
                  shadows: buttonTextIntensity != null && buttonTextIntensity! > 0
                      ? [
                          Shadow(
                            offset: const Offset(2, 2),
                            blurRadius: 4,
                            color: Colors.black.withOpacity(buttonTextIntensity!),
                          ),
                        ]
                      : null,
                ),
              ),
      ),
    );
  }
}