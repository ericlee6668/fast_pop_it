import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../data/app_colors.dart';
import '../data/app_string.dart';
import '../data/asset_strings.dart';
import '../data/storage_keys.dart';
import '../pages/game/controllers/game_controller.dart';
import '../pages/home/controllers/home_controller.dart';

class ShopItem {
  final String iconUrl;
  final String iconUrl2;
  final int themIndex;
  final String productId;
  final int itemCoinPrice;
  String itemRealCashPrice;
  String cardText;
  bool isPending;
  bool isItemSelected;
  bool isItemPurchased;
  bool showView;
  String? optionalIconUrl;

  ShopItem({
    required this.showView,
    required this.iconUrl,
    required this.iconUrl2,
    required this.cardText,
    required this.productId,
    required this.themIndex,
    required this.itemCoinPrice,
    required this.itemRealCashPrice,
    this.optionalIconUrl,
    this.isPending = false,
    this.isItemSelected = false,
    this.isItemPurchased = false,
  });

  // static List<ShopItem> shopItems = [
  //   ShopItem(
  //     themIndex: 0,
  //     cardText: AppStrings.useString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: true,
  //     isItemPurchased: true,
  //     productId: "dark_blue_color",
  //     itemRealCashPrice: 'R\$0,50',
  //     iconUrl: 'assets/dark_blue.png',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 1,
  //     cardText: AppStrings.useString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: true,
  //     itemRealCashPrice: 'R\$0,50',
  //     productId: "light_green_color",
  //     iconUrl: 'assets/light_green.png',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 2,
  //     cardText: AppStrings.useString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: true,
  //     productId: "pink_color",
  //     iconUrl: 'assets/pink.png',
  //     itemRealCashPrice: 'R\$0,50',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 3,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     itemRealCashPrice: 'R\$0,50',
  //     productId: "dark_green_color",
  //     iconUrl: 'assets/dark_green.png',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 4,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     productId: "orange_color",
  //     iconUrl: 'assets/orange.png',
  //     itemRealCashPrice: 'R\$0,50',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 5,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     productId: "purple_color",
  //     iconUrl: 'assets/purple.png',
  //     itemRealCashPrice: 'R\$0,50',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 6,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     productId: "standard_color",
  //     itemRealCashPrice: 'R\$0,50',
  //     iconUrl: 'assets/standard.png',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 7,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     itemRealCashPrice: 'R\$0,50',
  //     productId: "light_blue_color",
  //     iconUrl: 'assets/light_blue.png',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 8,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     productId: "yellow_color",
  //     itemRealCashPrice: 'R\$0,50',
  //     iconUrl: 'assets/yellow.png',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 9,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     productId: "grey_color",
  //     iconUrl: 'assets/grey.png',
  //     itemRealCashPrice: 'R\$0,50',
  //     optionalIconUrl: AssetStrings.popCoinImage,
  //     showView: true,
  //   ),
  //   ShopItem(
  //     themIndex: 10,
  //     cardText: AppStrings.buyString,
  //     itemCoinPrice: 1000,
  //     isItemSelected: false,
  //     isItemPurchased: false,
  //     productId: "black_color",
  //     iconUrl: 'assets/grey.png',
  //     itemRealCashPrice: 'R\$0,50',
  //     showView: true,
  //   ),
  // ];
  static List<ShopItem> shopItems = [
    ShopItem(
      themIndex: 0,
      cardText: AppStrings.useString,
      itemCoinPrice: 2000,
      isItemSelected: true,
      isItemPurchased: true,
      productId: "purple_color",
      iconUrl: 'assets/purple.png',
      iconUrl2: 'assets/character1.png',
      itemRealCashPrice: '\$0,50',
      showView: true,
    ),
    ShopItem(
      themIndex: 1,
      cardText: AppStrings.useString,
      itemCoinPrice: 2000,
      isItemSelected: false,
      isItemPurchased: true,
      productId: "purple_color",
      iconUrl: 'assets/purple.png',
      iconUrl2: 'assets/character2.png',
      itemRealCashPrice: '\$0,50',
      showView: true,
    ),
    ShopItem(
      themIndex: 2,
      cardText: AppStrings.useString,
      itemCoinPrice: 2000,
      isItemSelected: false,
      isItemPurchased: false,
      productId: "purple_color",
      iconUrl: 'assets/purple.png',
      iconUrl2: 'assets/character3.png',
      itemRealCashPrice: '\$0,50',
      showView: true,
    ),
    ShopItem(
      themIndex: 3,
      cardText: AppStrings.useString,
      itemCoinPrice: 2000,
      isItemSelected: false,
      isItemPurchased: false,
      productId: "purple_color",
      iconUrl: 'assets/purple.png',
      iconUrl2: 'assets/character4.png',
      itemRealCashPrice: '\$0,50',
      showView: true,
    ),
    ShopItem(
      themIndex: 4,
      cardText: AppStrings.useString,
      itemCoinPrice: 2000,
      isItemSelected: false,
      isItemPurchased: false,
      productId: "purple_color",
      iconUrl: 'assets/purple.png',
      iconUrl2: 'assets/character5.png',
      itemRealCashPrice: '\$0,50',
      showView: true,
    ),
    ShopItem(
      themIndex: 5,
      cardText: AppStrings.useString,
      itemCoinPrice: 2000,
      isItemSelected: false,
      isItemPurchased: false,
      productId: "purple_color",
      iconUrl: 'assets/purple.png',
      iconUrl2: 'assets/character6.png',
      itemRealCashPrice: '\$0,50',
      showView: true,
    ),
  ];

  void setSelected() {
    for (var item in ShopItem.shopItems) {
      if (item.showView == true) {
        item.setUnselected();
      }
    }
    if (isItemPurchased) {
      if (showView == true) {
        isItemSelected = true;
        cardText = AppStrings.usingString;
        final HomeController controller = Get.find();
        controller.homeThemeIndex.value = themIndex;
        GameController.onThemeChange(themIndex);
        controller.update();
        GetStorage().write(StorageKeys.themeKey, themIndex);

        int? selectedThemeIndex =
            GetStorage().read(StorageKeys.selectedThemeKey);
        if (selectedThemeIndex != null && selectedThemeIndex != themIndex) {
          // Remove the previous selected theme from the stored value
          GetStorage().remove(StorageKeys.selectedThemeKey);
        }

        GetStorage().write(StorageKeys.selectedThemeKey, themIndex);
      }
    }
  }

  void setUnselected() {
    if (isItemPurchased) {
      if (showView == true) {
        isItemSelected = false;
        cardText = AppStrings.useString;
      }
    }
  }

  void purchaseItem(BuildContext context) {
    final HomeController controller = Get.find();
    var popCoin = GetStorage().read(StorageKeys.popCoinKey) ?? 0;
    controller.popCoinValue.value = popCoin;
    int popCoinValue = controller.popCoinValue.toInt();

    if (popCoinValue >= itemCoinPrice) {
      isItemPurchased = true;
      cardText = AppStrings.useString;

      List purchasedThemes =
          GetStorage().read(StorageKeys.purchasedThemesKey) ?? [];
      purchasedThemes.add(themIndex);
      GetStorage().write(StorageKeys.purchasedThemesKey, purchasedThemes);

      Navigator.of(context).pop();
      int newPopCoinValue = popCoinValue - itemCoinPrice;
      controller.popCoinValue.value = newPopCoinValue;
      GetStorage().write(StorageKeys.popCoinKey, newPopCoinValue);
      controller.updatePopCoinsValue();
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: AppColors.gameColorsTheme[0].primary,
            content: SizedBox(
                width: Get.width*0.6,
                height: Get.height * 0.1,
                child: Text(AppStrings.buyCoinNENString,
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontFamily: 'HYM4GJM'))),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Center(
                    child: SizedBox(
                        width: 100.w,
                        height: 35.w,
                        child: Image.asset('assets/btn_close.png'))),
              ),
            ],
          );
        },
      );
    }
  }
}
