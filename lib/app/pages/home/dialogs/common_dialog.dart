import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../data/app_colors.dart';
import '../controllers/home_controller.dart';
import '../controllers/rank_controller.dart';

class CommonDialog extends StatefulWidget {
  final Widget titleView;
  final Widget contentView;
  final Widget bottomView;

  const CommonDialog(
      {super.key,
      required this.titleView,
      required this.contentView,
      required this.bottomView});

  @override
  State<CommonDialog> createState() => _CommonDialogState();
}

class _CommonDialogState extends State<CommonDialog> {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    Get.put(RankController());
    return Stack(
      children: [
        Align(alignment: Alignment.topCenter, child: widget.titleView),
        Center(
          child: Container(
            width: Get.width * 0.8,
            height: Get.height * 0.72,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/bg_dialog_rank_list.png'),
                  fit: BoxFit.fill),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.w),
              decoration: BoxDecoration(
                  color: AppColors.gameColorsTheme[0].primary,
                  border: Border.all(color: Colors.white, width: 1.w),
                  borderRadius: BorderRadius.circular(10.w)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  widget.contentView,
                  const Spacer(),
                  widget.bottomView
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
