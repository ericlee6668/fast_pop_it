
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/app_colors.dart';
import '../pages/home/controllers/home_controller.dart';

class ShopCard extends StatelessWidget {
  final double height;
  final double width;
  final String iconUrl; // Ícone obrigatório
  final String? optionalIconUrl; // Ícone opcional
  final String cardText;
  final num cardTextSize;

  const ShopCard({super.key,
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
        color: AppColors
            .gameColorsTheme[controller.homeThemeIndex.value].background,
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
          return Column(
            children: [
              const Spacer(),
              Image.asset(
                iconUrl,
                height: constraints.maxHeight * 0.7,
                width: constraints.maxWidth * 0.7,
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                height: constraints.maxHeight * 0.25,
                width: constraints.maxWidth,
                color: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value]
                    .darkPrimary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (optionalIconUrl != null)
                      Image.asset(
                        optionalIconUrl!,
                        height: constraints.maxHeight * 0.2 * 0.8,
                      ),
                    if (optionalIconUrl != null) const SizedBox(width: 8),
                    Text(
                      cardText,
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
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
