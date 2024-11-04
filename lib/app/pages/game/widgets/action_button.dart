import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/app_colors.dart';
import '../../../data/storage_keys.dart';
import '../controllers/game_controller.dart';

class ActionButton extends StatelessWidget {
  double size;
  double? top;
  double? left;
  double? right;
  double? bottom;
  bool isIcon;
  IconData icon;
  Function onTap;

  ActionButton({
    super.key,
    required this.size,
    this.top,
    required this.icon,
    required this.isIcon,
    this.left,
    this.right,
    this.bottom,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final GameController controller = Get.find();
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: GetBuilder<GameController>(builder: (context) {
        return GestureDetector(
          onTap: () {
            onTap();
          },
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size / 2),
              color: controller.gameThemeIndex.value != 0
                  ? AppColors.gameColorsTheme[controller.gameThemeIndex.value]
                      .secondary
                  : Colors.transparent,
            ),
            child: Center(
              child: isIcon
                  ? Icon(
                      icon,
                      color: HSLColor.fromColor(AppColors
                              .gameColorsTheme[controller.gameThemeIndex.value]
                              .primary)
                          .withLightness(0.43)
                          .toColor(),
                      size: (size / 3) * 2,
                    )
                  : Image.asset(getImageString(icon)),
            ),
          ),
        );
      }),
    );
  }

  String getImageString(IconData icon) {
    if (icon == Icons.refresh) {
      return 'assets/btn_rev.png';
    } else if (icon == Icons.home_outlined) {
      return 'assets/btn_index.png';
    } else if (icon == Icons.volume_up_outlined) {
      bool _music = GetStorage().read(StorageKeys.musicKey) ?? true;
      if (_music) {
        return 'assets/btn_sound.png';
      } else {
        return 'assets/btn_sound_off.png';
      }
    } else {
      return 'assets/btn_back.png';
    }
  }
}
