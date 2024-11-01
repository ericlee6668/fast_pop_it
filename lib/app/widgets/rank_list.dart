import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pop_it/app/widgets/text_neumorphic.dart';


import '../data/app_colors.dart';
import '../data/app_sizes.dart';
import '../data/app_string.dart';
import '../pages/home/controllers/home_controller.dart';
import '../pages/home/controllers/purchase_controller.dart';
import '../pages/home/controllers/rank_controller.dart';
import 'custo_elevated_button.dart';

class RankListIcon extends StatelessWidget {
  final PurchaseController purchaseController = Get.find();
  final HomeController controller = Get.find();

  String codeSt = '';

  final double? top;
  final double? right;
  Color? elementColor;

  RankListIcon({
    super.key,
    this.top,
    this.right,
    this.elementColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: GestureDetector(
        onTap: () {
          FlameAudio.play('click_2.mp3');
          showDialog(
            context: context,
            builder: (BuildContext context) {
              Get.put(RankController());
              return AlertDialog(
                insetPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                backgroundColor: AppColors
                    .gameColorsTheme[controller.homeThemeIndex.value].primary,
                content: SizedBox(
                  width: 1400,
                  child: Column(
                    children: [
                      TextNeumorphic(
                        text: AppStrings.rankString,
                        fontWidth: TextSizes.subTittleMenuSize,
                        borderResult: false,
                      ),
                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                        children: [
                          TextNeumorphic(
                            text: AppStrings.rankingString,
                            fontWidth: TextSizes.configInnerSize,
                            borderResult: false,
                          ),
                          TextNeumorphic(
                            text: AppStrings.scoreString,
                            fontWidth: TextSizes.configInnerSize,
                            borderResult: false,
                          ),
                          TextNeumorphic(
                            text: AppStrings.dateString,
                            fontWidth: TextSizes.configInnerSize,
                            borderResult: false,
                          ),
                        ],
                      ),
                      GetBuilder<RankController>(builder: (controller) {
                        return SizedBox(
                          height: 140,
                          width: 700,
                          child: ListView.builder(
                            itemCount: controller.rankList.length,
                            padding: EdgeInsets.zero,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(width: 10,),
                                  TextNeumorphic(
                                    text: (index + 1).toString(),
                                    fontWidth: TextSizes.configInnerSize,
                                    borderResult: false,
                                  ),
                                  const SizedBox(width: 20,),
                                  TextNeumorphic(
                                    text: controller.rankList[index].score
                                        .toString(),
                                    fontWidth: TextSizes.configInnerSize,
                                    borderResult: false,
                                  ),
                                  TextNeumorphic(
                                    text: controller.rankList[index].date
                                        .toString(),
                                    fontWidth: TextSizes.configInnerSize,
                                    borderResult: false,
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      })
                    ],
                  ),
                ),
                actions: <Widget>[
                  Row(
                    children: [
                      // const Spacer(),
                      // CustomElevatedButton(
                      //     onPressedCallback: () {
                      //       print(ShopItem.shopItems[10].productId);
                      //       purchaseController.purchaseShopItem(
                      //         ShopItem.shopItems[10].productId,
                      //         (PurchaseStatus status) => {
                      //           if (status == PurchaseStatus.purchased)
                      //             {
                      //               Fluttertoast.showToast(
                      //                 msg: AppStrings.itemBoughtString,
                      //                 toastLength: Toast.LENGTH_LONG,
                      //                 gravity: ToastGravity.BOTTOM,
                      //                 backgroundColor: AppColors
                      //                     .gameColorsTheme[
                      //                         controller.homeThemeIndex.value]
                      //                     .darkPrimary,
                      //                 textColor: AppColors
                      //                     .gameColorsTheme[
                      //                         controller.homeThemeIndex.value]
                      //                     .text,
                      //               ),
                      //               GetStorage().write(
                      //                   StorageKeys.isAdsRemovedKey, true),
                      //             }
                      //           else if (status == PurchaseStatus.pending)
                      //             {
                      //               Fluttertoast.showToast(
                      //                 msg: AppStrings.itemBoughtPendingString,
                      //                 toastLength: Toast.LENGTH_LONG,
                      //                 gravity: ToastGravity.BOTTOM,
                      //                 backgroundColor: AppColors
                      //                     .gameColorsTheme[
                      //                         controller.homeThemeIndex.value]
                      //                     .darkPrimary,
                      //                 textColor: AppColors
                      //                     .gameColorsTheme[
                      //                         controller.homeThemeIndex.value]
                      //                     .text,
                      //               )
                      //             }
                      //           else if (status == PurchaseStatus.error)
                      //             {
                      //               Fluttertoast.showToast(
                      //                 msg: AppStrings.itemBoughtErrorString,
                      //                 toastLength: Toast.LENGTH_LONG,
                      //                 gravity: ToastGravity.BOTTOM,
                      //                 backgroundColor: AppColors
                      //                     .gameColorsTheme[
                      //                         controller.homeThemeIndex.value]
                      //                     .darkPrimary,
                      //                 textColor: AppColors
                      //                     .gameColorsTheme[
                      //                         controller.homeThemeIndex.value]
                      //                     .text,
                      //               )
                      //             }
                      //         },
                      //       );
                      //     },
                      //     text: AppStrings.yesString,
                      //     showImage: false),
                      const Spacer(),
                      CustomElevatedButton(
                          onPressedCallback: () {
                            Get.delete<RankController>();
                            Get.back();
                          },
                          text: 'ok',
                          showImage: false),
                      const Spacer(),
                    ],
                  ),
                ],
              );
            },
          );
        },
        child: Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: AppColors
                  .gameColorsTheme[controller.homeThemeIndex.value].secondary,
            ),
            child: Icon(
              Icons.date_range_outlined,
              color: HSLColor.fromColor(AppColors
                      .gameColorsTheme[controller.homeThemeIndex.value].primary)
                  .withLightness(0.43)
                  .toColor(),
              size: 26,
            )),
      ),
    );
  }
}
