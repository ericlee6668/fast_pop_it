import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/app_string.dart';
import '../../../data/asset_strings.dart';
import '../../../widgets/custom_gridview.dart';
import '../../../widgets/top_shop_node.dart';
import '../controllers/home_controller.dart';

class ShopNew extends StatefulWidget {
  const ShopNew({super.key});

  @override
  State<ShopNew> createState() => _ShopState();
}

class _ShopState extends State<ShopNew> {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/dialog_title_shop.png',
              height: 55.w,
            )),
        Center(
          child: Container(
            width: Get.width * 0.8,
            height: Get.height * 0.72,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image:  DecorationImage(
                  image: AssetImage('assets/bg_dialog_rank_list.png'),
                  fit: BoxFit.fill),

            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 16.w,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: TopShopNode(
                    currencyIcon: AssetStrings.popCoinImage,
                    currencyValue: controller.popCoinValue.toInt(),
                  ),
                ),
                SizedBox(height: 10.w,),
                Expanded(
                  child: CustomThemeGridView(
                    heightSize: heightSize,
                    widthSize: widthSize,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}