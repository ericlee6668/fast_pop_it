import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pop_it/app/widgets/shop_items.dart';

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
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: ShopItem.shopItems[index].isItemSelected
            ? AppColors.gameColorsTheme[0].background
            : AppColors.gameColorsTheme[0].primary,
        borderRadius: BorderRadius.circular(10.w),
        border: Border.all(color: Colors.white, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                iconUrl,
                height: constraints.maxHeight * 0.8,
                width: constraints.maxWidth * 0.2,
              ),
              Visibility(
                visible: !ShopItem.shopItems[index].isItemPurchased,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/gold_coin.png',
                      width: 20.w,
                      height: 20.w,
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      ShopItem.shopItems[index].itemCoinPrice.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              Container(
                width: 40.w,
                height: 20.w,
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.w),
                    image: DecorationImage(image: AssetImage(getBtnBg(index)))),
              ),
            ],
          );
        },
      ),
    );
  }

  String getBtnBg(int index) {
    if (ShopItem.shopItems[index].isItemPurchased) {
      if (ShopItem.shopItems[index].isItemSelected) {
        return 'assets/shop_btn_using.png';
      } else {
        return 'assets/shop_btn_use.png';
      }
    } else {
      return 'assets/shop_btn_buy.png';
    }
  }
}
