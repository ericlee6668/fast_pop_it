import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../data/asset_strings.dart';
import '../../../widgets/button_neumorphic.dart';
import '../controllers/home_controller.dart';

class Connection extends StatefulWidget {
  const Connection({super.key});

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  final HomeController controller = Get.find();
  bool isDimissible = false;

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return WillPopScope(
      onWillPop: () async {
        if (isDimissible == true) {
          return true;
        } else {
          return false;
        }
      },
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: AppColors
            .gameColorsTheme[controller.homeThemeIndex.value].primary,
        child: Container(
          width: widthSize * 0.4,
          height: heightSize * 0.4,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors
                  .gameColorsTheme[controller.homeThemeIndex.value].tertiary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              const Spacer(),
              // SizedBox(
              //   height: heightSize * 0.4 * 0.5,
              //   width: widthSize * 0.4 * 0.5,
              //   child: Image.asset(
              //     AssetStrings.noConnectionImage,
              //   ),
              // ),
              const Spacer(),
              ButtonNeumorphic(
                width: 0.20,
                height: 0.08,
                onPressedCallback: () {
                  Get.back();
                  controller.isShowingDialog = false;
                  controller.checkConnectivity();
                },
                buttonTextBorder: false,
                buttonBorderState: true,
                buttonText: AppStrings.retryString,
                buttonBorder: widthSize * 0.0015,
                buttonFontWidth: TextSizes.configInnerSize,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}