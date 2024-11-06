import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:pop_it/app/widgets/shop_items.dart';
import '../data/app_colors.dart';
import '../pages/home/controllers/home_controller.dart';

import '../pages/home/controllers/purchase_controller.dart';
import 'card_shop.dart';
import 'custo_elevated_button.dart';

class CustomThemeGridView extends StatelessWidget {
  final double heightSize;
  final double widthSize;

  const CustomThemeGridView({
    super.key,
    required this.heightSize,
    required this.widthSize,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    return GetBuilder<HomeController>(builder: (_) {
      return ListView.separated(
        itemCount: ShopItem.shopItems.length,
        shrinkWrap: true,
        itemBuilder: (context, itemIndex) {
          return GestureDetector(
            onTap: () {
              if (!ShopItem.shopItems[itemIndex].isItemPurchased) {
                // 如果该商品尚未购买，则显示购买弹出窗口
                showPurchaseDialog(context, controller, itemIndex);
              } else {
                // 取消选择所有其他项目
                for (var item in ShopItem.shopItems) {
                  if (item.isItemPurchased &&
                      item != ShopItem.shopItems[itemIndex]) {
                    ShopItem.shopItems[itemIndex].setSelected();
                  }
                }
                ShopItem.shopItems[itemIndex].setSelected();
                controller.update();
                print("onTap()=>$itemIndex");
              }
            },
            child: ShopItem.shopItems[itemIndex].showView == true
                ? ShopCard(
                    index: itemIndex,
                    height: 65.w,
                    width: 45.w,
                    cardTextSize: 0.2,
                    iconUrl: ShopItem.shopItems[itemIndex].iconUrl2,
                    cardText: ShopItem.shopItems[itemIndex].cardText,
                  )
                : Container(
                    height: 20.w,
                  ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: 10,
          );
        },
      );
    });

  }

  void showPurchaseDialog(
      BuildContext context, HomeController controller, int itemIndex) {
    final PurchaseController purchaseController = Get.find();
    const double allDialogSize = 0.5;
    showGeneralDialog(
        context: context,
        barrierLabel: "Label",
        barrierDismissible: true,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (context, anim1, anim2) {
          return AlertDialog(
            backgroundColor: Colors.transparent,
            insetPadding: EdgeInsets.zero,
            content: Container(
              height: heightSize * 0.3,
              width: widthSize * allDialogSize,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/popup_box_03.png'),fit: BoxFit.fill)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 10.w,),
                  Image.asset(
                    ShopItem.shopItems[itemIndex].iconUrl2,
                    width: widthSize * allDialogSize * 0.5,
                    height: heightSize * allDialogSize * 0.25,
                  ),
                  CustomElevatedButton(
                      onPressedCallback: () {
                        ShopItem.shopItems[itemIndex].purchaseItem(context);
                        purchaseController.update();
                      },
                      text:
                      ShopItem.shopItems[itemIndex].itemCoinPrice.toString(),
                      showImage: true)
                ],
              ),
            ),

          );
        },
        transitionBuilder: (context, anim1, anim2, child) {
          return Transform.scale(
            scale: anim1.value,
            child: FadeTransition(
              opacity: anim1,
              child: child,
            ),
          );
        });
  }
}
