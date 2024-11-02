import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/app_colors.dart';
import '../../../data/asset_strings.dart';
import '../../../widgets/custom_gridview.dart';
import '../../../widgets/top_shop_node.dart';
import '../controllers/home_controller.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;

    return Obx(
      () => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        insetPadding: EdgeInsets.zero,
        backgroundColor:
            AppColors.gameColorsTheme[controller.homeThemeIndex.value].primary,
        child: Container(
          height: heightSize * 0.8,
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors
                  .gameColorsTheme[controller.homeThemeIndex.value].tertiary,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child:const Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child:  Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: TopShopNode(
                    currencyIcon: AssetStrings.popCoinImage,
                    currencyValue: controller.popCoinValue.toInt(),
                  ),
                ),
              ),
              const Text(
                'Charactor',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomThemeGridView(
                heightSize: heightSize ,
                widthSize: widthSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
