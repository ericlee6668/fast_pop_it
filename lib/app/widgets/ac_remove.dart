import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pop_it/app/widgets/shop_items.dart';
import 'package:pop_it/app/widgets/text_neumorphic.dart';

import '../data/app_colors.dart';
import '../data/app_sizes.dart';
import '../data/app_string.dart';
import '../data/storage_keys.dart';
import '../pages/home/controllers/home_controller.dart';
import '../pages/home/controllers/purchase_controller.dart';
import '../pages/home/drawings/ads_remove_icon.dart';
import 'custo_elevated_button.dart';

class AcRemoveIcon extends StatelessWidget {
  final PurchaseController purchaseController = Get.find();
  final HomeController controller = Get.find();
  String codeSt = '';

  final double? height;
  final double? width;
  Color? elementColor;
  bool isitemPurchased = GetStorage().read(StorageKeys.isAdsRemovedKey) ?? false;

  AcRemoveIcon({
    super.key,
    this.height,
    this.width,
    this.elementColor,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 25,
      top: 25,
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].primary,
                content: SizedBox(
                  height: 200,
                  width: 400,
                  child: Column(
                    children: [
                      const Spacer(),
                      TextNeumorphic(
                        text: AppStrings.removeAdsString,
                        fontWidth: TextSizes.configTittleSize,
                        borderResult: false,
                      ),
                      const Spacer(),
                      CustomPaint(
                        size: const Size(
                          80,
                          80,
                        ),
                        painter: AdsRemoveElement(elementColor: elementColor ?? Colors.black),
                      ),
                      const Spacer(),
                      const TextNeumorphic(
                        text: "R\$14,99",
                        fontWidth: TextSizes.subTittleMenuSize,
                        borderResult: false,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                actions: <Widget>[
                  Row(
                    children: [
                      const Spacer(),
                      CustomElevatedButton(
                          onPressedCallback: () {
                            print(ShopItem.shopItems[10].productId);
                            purchaseController.purchaseShopItem(
                              ShopItem.shopItems[10].productId,
                              (PurchaseStatus status) => {
                                if (status == PurchaseStatus.purchased)
                                  {
                                    Fluttertoast.showToast(
                                      msg: AppStrings.itemBoughtString,
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].darkPrimary,
                                      textColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].text,
                                    ),
                                    GetStorage().write(StorageKeys.isAdsRemovedKey, true),
                                  }
                                else if (status == PurchaseStatus.pending)
                                  {
                                    Fluttertoast.showToast(
                                      msg: AppStrings.itemBoughtPendingString,
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].darkPrimary,
                                      textColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].text,
                                    )
                                  }
                                else if (status == PurchaseStatus.error)
                                  {
                                    Fluttertoast.showToast(
                                      msg: AppStrings.itemBoughtErrorString,
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.BOTTOM,
                                      backgroundColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].darkPrimary,
                                      textColor: AppColors.gameColorsTheme[controller.homeThemeIndex.value].text,
                                    )
                                  }
                              },
                            );
                          },
                          text: AppStrings.yesString,
                          showImage: false),
                      const Spacer(),
                      CustomElevatedButton(
                          onPressedCallback: () {
                            Get.back();
                          },
                          text: AppStrings.noString,
                          showImage: false),
                      const Spacer(),
                    ],
                  ),
                ],
              );
            },
          );
        },
        child: CustomPaint(
          size: Size(
            height ?? 80,
            width ?? 80,
          ),
          painter: AdsRemoveElement(elementColor: elementColor ?? Colors.black),
        ),
      ),
    );
  }
}
