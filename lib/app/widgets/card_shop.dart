import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/app_colors.dart';
import '../pages/home/controllers/home_controller.dart';

class ShopCard extends StatelessWidget {
  final double height;
  final double width;
  final String iconUrl;
  final String? optionalIconUrl;
  final String cardText;
  final num cardTextSize;
  final int index;

  const ShopCard({
    super.key,
    required this.index,
    required this.height,
    required this.width,
    required this.iconUrl,
    this.optionalIconUrl,
    required this.cardText,
    required this.cardTextSize,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.gameColorsTheme[index].background,
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
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Row(
            children: [
              Image.asset(
                iconUrl,
                height: constraints.maxHeight * 0.8,
                width: constraints.maxWidth * 0.6,
              ),
              Container(
                width: 100,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(cardText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // fontFamily: 'Cute-Dolphin-Regular',
                      fontSize: constraints.maxHeight * 0.2,
                      color: AppColors
                          .gameColorsTheme[controller.homeThemeIndex.value]
                          .text,
                      shadows: [
                        Shadow(
                          offset: const Offset(2, 2),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
