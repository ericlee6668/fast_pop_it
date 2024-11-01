import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../data/app_colors.dart';
import '../data/asset_strings.dart';
import '../pages/home/controllers/home_controller.dart';

class TopShopNode extends StatelessWidget {
  final int? currencyValue;
  final String currencyIcon;
  final String addButton = AssetStrings.buyCurrencyImage;

  const TopShopNode({super.key, 
    required this.currencyIcon,
    required this.currencyValue,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.065,
      width: 100,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors
              .gameColorsTheme[controller.homeThemeIndex.value].darkPrimary,
          borderRadius: BorderRadius.circular(12),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.065 * 0.65,
              width: MediaQuery.of(context).size.width * 0.16 * 0.4,
              child: Image.asset(
                currencyIcon,
              ),
            ),
            Text(
              '$currencyValue',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}