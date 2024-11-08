import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pop_it/app/widgets/text_neumorphic.dart';

import '../data/app_colors.dart';
import '../data/app_sizes.dart';
import '../data/app_string.dart';
import '../pages/home/controllers/home_controller.dart';
import '../pages/home/controllers/rank_controller.dart';
import 'custo_elevated_button.dart';

class RankListIcon extends StatelessWidget {
  final HomeController homeController = Get.find();

  String codeSt = '';
  final double size;
  final double? top;
  final double? right;
  Color? elementColor;

  RankListIcon({
    super.key,
    this.top,
    this.right,
    required this.size,
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
                insetPadding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                backgroundColor: AppColors
                    .gameColorsTheme[homeController.homeThemeIndex.value]
                    .primary,
                content: SizedBox(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height/2,
                  child: Column(
                    children: [
                      TextNeumorphic(
                        text: AppStrings.rankString,
                        fontWidth: TextSizes.subTittleMenuSize,
                        borderResult: false,
                      ),
                      // Row(
                      //   mainAxisAlignment:
                      //   MainAxisAlignment.spaceAround,
                      //   children: [
                      //     TextNeumorphic(
                      //       text: AppStrings.rankingString,
                      //       fontWidth: TextSizes.configInnerSize,
                      //       borderResult: false,
                      //     ),
                      //     TextNeumorphic(
                      //       text: AppStrings.scoreString,
                      //       fontWidth: TextSizes.configInnerSize,
                      //       borderResult: false,
                      //     ),
                      //     TextNeumorphic(
                      //       text: AppStrings.dateString,
                      //       fontWidth: TextSizes.configInnerSize,
                      //       borderResult: false,
                      //     ),
                      //   ],
                      // ),
                      GetBuilder<RankController>(builder: (controller) {
                        return Expanded(
                          child: ListView.separated(
                            itemCount: controller.rankList.length,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${AppStrings.rankingString}:",
                                            style:  TextStyle(
                                                color: AppColors
                                                    .gameColorsTheme[
                                                homeController
                                                    .homeThemeIndex
                                                    .value]
                                                    .text,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(width: 20,),
                                          TextNeumorphic(
                                            text: (index + 1).toString(),
                                            fontWidth:
                                                TextSizes.configInnerSize,
                                            textColor: Colors.red,
                                            borderResult: false,
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Row(
                                        children: [
                                          Text(
                                            "${AppStrings.scoreString}:",
                                            style: TextStyle(
                                                color: AppColors
                                                    .gameColorsTheme[
                                                        homeController
                                                            .homeThemeIndex
                                                            .value]
                                                    .text,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          TextNeumorphic(
                                            text: controller
                                                .rankList[index].score
                                                .toString(),
                                            fontWidth: TextSizes.bntMenuSize,
                                            borderResult: false,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "${AppStrings.dateString}:",
                                        style: TextStyle(
                                            color: AppColors
                                                .gameColorsTheme[homeController
                                                    .homeThemeIndex.value]
                                                .text,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      TextNeumorphic(
                                        text: controller.rankList[index].date
                                            .toString(),
                                        fontWidth: TextSizes.configInnerSize,
                                        borderResult: false,
                                      ),
                                    ],
                                  ),
                                ],
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return const SizedBox(
                                height: 20,
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
            width: size,
            height: size,
            decoration: homeController.homeThemeIndex.value!=0?BoxDecoration(
              borderRadius: BorderRadius.circular(size),
              color: AppColors
                  .gameColorsTheme[homeController.homeThemeIndex.value]
                  .secondary,
            ):null,
            child: homeController.homeThemeIndex.value!=0?Icon(
              Icons.date_range_outlined,
              color: HSLColor.fromColor(AppColors
                      .gameColorsTheme[homeController.homeThemeIndex.value]
                      .primary)
                  .withLightness(0.43)
                  .toColor(),
              size: size/2,
            ):Image.asset('assets/btn_record.png')
        ),
      ),
    );
  }
}
