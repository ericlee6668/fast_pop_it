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
      return Expanded(
        child: ListView.separated(
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
                      height: 120,
                      width: 45,
                      cardTextSize: 0.2,
                      iconUrl: ShopItem.shopItems[itemIndex].iconUrl2,
                      cardText: ShopItem.shopItems[itemIndex].cardText,
                    )
                  : Container(
                      height: 20,
                    ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
        ),
      );
    });

    // return GetBuilder<HomeController>(
    //   builder: (_) {
    //     return Container(
    //       alignment: Alignment.center,
    //       height: heightSize * 0.7,
    //       child: SingleChildScrollView(
    //         scrollDirection: Axis.horizontal,
    //         child: LayoutBuilder(
    //           builder: (context, constraints) {
    //             return Row(
    //               children: List.generate(
    //                 (ShopItem.shopItems.length / 3).ceil(),
    //                 (rowIndex) {
    //                   List<Widget> rowItems = [];
    //
    //                   for (int i = 0; i < 3; i++) {
    //                     int itemIndex = rowIndex * 3 + i;
    //                     if (itemIndex < ShopItem.shopItems.length) {
    //                       rowItems.add(
    //                         GestureDetector(
    //                           onTap: () {
    //                             if (!ShopItem
    //                                 .shopItems[itemIndex].isItemPurchased) {
    //                               // 如果该商品尚未购买，则显示购买弹出窗口
    //                               showPurchaseDialog(
    //                                   context, controller, itemIndex);
    //                             } else {
    //                               // 取消选择所有其他项目
    //                               for (var item in ShopItem.shopItems) {
    //                                 if (item.isItemPurchased &&
    //                                     item != ShopItem.shopItems[itemIndex]) {
    //                                   ShopItem.shopItems[itemIndex]
    //                                       .setSelected();
    //                                 }
    //                               }
    //                               ShopItem.shopItems[itemIndex].setSelected();
    //                               controller.update();
    //                               print("onTap()=>${itemIndex}");
    //                             }
    //                           },
    //                           child: ShopItem.shopItems[itemIndex].showView ==
    //                                   true
    //                               ? ShopCard(
    //                                   height: constraints.maxHeight * 0.3,
    //                                   width: widthSize * 0.15,
    //                                   cardTextSize: 0.2,
    //                                   iconUrl:
    //                                       ShopItem.shopItems[itemIndex].iconUrl,
    //                                   cardText: ShopItem
    //                                       .shopItems[itemIndex].cardText,
    //                                 )
    //                               : Container(),
    //                         ),
    //                       );
    //
    //                       if (i < 2) {
    //                         rowItems.add(SizedBox(
    //                             height:
    //                                 constraints.maxHeight * 0.05)); // 计算垂直间距
    //                       }
    //                     }
    //                   }
    //
    //                   return Column(children: rowItems);
    //                 },
    //               )
    //                   .expand(
    //                     (columnWidget) =>
    //                         [columnWidget, const SizedBox(width: 10)], // 水平间距
    //                   )
    //                   .toList()
    //                 ..removeLast(), // 删除最后添加的额外 SizedBox
    //             );
    //           },
    //         ),
    //       ),
    //     );
    //   },
    // );
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
            backgroundColor: AppColors
                .gameColorsTheme[controller.homeThemeIndex.value].primary,
            content: SizedBox(
              height: heightSize * 0.3,
              width: widthSize * allDialogSize,
              child: Image.asset(
                ShopItem.shopItems[itemIndex].iconUrl2,
                width: widthSize * allDialogSize * 0.5,
                height: heightSize * allDialogSize * 0.25,
              ),
            ),
            actions: <Widget>[
              Center(
                child: CustomElevatedButton(
                    onPressedCallback: () {
                      ShopItem.shopItems[itemIndex].purchaseItem(context);
                    },
                    text:
                        ShopItem.shopItems[itemIndex].itemCoinPrice.toString(),
                    showImage: true),
              ),
            ],
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
