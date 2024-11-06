
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pop_it/app/widgets/text_neumorphic.dart';

import '../data/app_colors.dart';
import '../data/app_sizes.dart';
import '../pages/home/controllers/home_controller.dart';

class SliderNeumorphic extends StatelessWidget {
  final String sliderText;
   bool sliderVar;
  final ValueChanged<bool> onChangedSlider;

   SliderNeumorphic({super.key,
    required this.sliderText,
    required this.sliderVar,
    required this.onChangedSlider,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.find();
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: TextNeumorphic(
            fontWidth: TextSizes.configBtnsSize,
            borderResult: false,
            intensityResult: 0.7,
            text: sliderText,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: heightSize * 0.01,
          ),
          height: heightSize * 0.09,
          width: widthSize * 0.15,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          // child: Switch(
          //   value: sliderVar,
          //   onChanged: onChangedSlider,
          //   activeColor: AppColors
          //       .gameColorsTheme[controller.homeThemeIndex.value].secondary,
          //   activeTrackColor: AppColors
          //       .gameColorsTheme[controller.homeThemeIndex.value].background,
          //   inactiveThumbColor: Colors.grey.shade400,
          //   inactiveTrackColor: Colors.grey.shade300,
          // ),
          child: GestureDetector(
            onTap: (){
              sliderVar=!sliderVar;
              onChangedSlider(sliderVar);
            },
              child: sliderVar?Image.asset('assets/setting_btn_on.png'):Image.asset('assets/setting_btn_off.png')),
        ),
      ],
    );
  }
}