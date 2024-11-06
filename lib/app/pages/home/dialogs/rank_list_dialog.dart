import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../widgets/button_image_default.dart';
import '../../../widgets/dotted_line.dart';
import '../../../widgets/text_neumorphic.dart';
import '../controllers/home_controller.dart';
import '../controllers/rank_controller.dart';

class RankListDialog extends StatefulWidget {
  const RankListDialog({super.key});

  @override
  State<RankListDialog> createState() => _RankListDialogState();
}

class _RankListDialogState extends State<RankListDialog> {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Get.put(RankController());
    return Stack(
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/icon_rank.png',
              height: 55.w,
            )),
        Center(
          child: GetBuilder<RankController>(builder: (controller) {
            return Container(
              width: Get.width * 0.8,
              height: Get.height * 0.72,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg_dialog_rank_list.png'),
                    fit: BoxFit.fill),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors
                              .gameColorsTheme[
                                  homeController.homeThemeIndex.value]
                              .primary,
                          borderRadius: BorderRadius.circular(16.w),
                          border: Border.all(color: Colors.white, width: 1.w)),
                      margin: EdgeInsets.only(
                          top: 20.w, left: 20.w, right: 20.w, bottom: 5.w),
                      child: ListView.separated(
                        itemCount: controller.rankList.length,
                        padding: EdgeInsets.all(10.w),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            children: [
                              if (index < 4)
                                Image.asset(
                                  'assets/rank_icon_0${index + 1}.png',
                                  scale: 2,
                                )
                              else
                                Image.asset(
                                  'assets/rank_icon_04.png',
                                  scale: 2,
                                ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          AppStrings.scoreString,
                                          style: TextStyle(
                                              color: AppColors
                                                  .gameColorsTheme[
                                                      homeController
                                                          .homeThemeIndex.value]
                                                  .text,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp),
                                        ),
                                        const Spacer(),
                                        TextNeumorphic(
                                          text: controller.rankList[index].score
                                              .toString(),
                                          fontWidth: TextSizes.boardTextSize,
                                          borderResult: false,
                                        ),
                                      ],
                                    ),
                                    TextNeumorphic(
                                      text: controller.rankList[index].date
                                          .toString(),
                                      fontWidth: TextSizes.bntMenuSize,
                                      borderResult: false,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const DottedLine(
                            dashHeight: 3,
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ButtonImageDefault(
                      buttonBorderWidth: 1,
                      buttonTextIntensity: 0.6,
                      buttonText: 'ok',
                      onPressedCallback: () {
                        FlameAudio.play('click_1.mp3');
                        Get.back();
                      },
                    ),
                  )
                ],
              ),
            );
          }),
        ),
      ],
    );
  }
}
