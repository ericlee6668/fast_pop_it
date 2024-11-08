import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../data/app_colors.dart';
import '../data/asset_strings.dart';
import '../pages/home/controllers/home_controller.dart';

class TopShopNode extends StatelessWidget {
  final int? currencyValue;
  final String currencyIcon;

  const TopShopNode({super.key, 
    required this.currencyIcon,
    required this.currencyValue,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Visibility(
      visible: false,
      child: Container(
        height: 27.w,
        width: 90.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors
              .gameColorsTheme[0].primary,
          borderRadius: BorderRadius.circular(20.w),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(2, 2),
              blurRadius: 6,
            ),
            BoxShadow(
              color: Colors.white.withOpacity(0.7),
              offset: const Offset(-2, -2),
              blurRadius: 6,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 24.w,
              width: 24.w,
              child: Image.asset(
                currencyIcon,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(right: 5.w),
              child: Text(
                '$currencyValue',
                style:  TextStyle(
                  fontSize: 13.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}