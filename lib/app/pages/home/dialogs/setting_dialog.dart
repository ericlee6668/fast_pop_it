import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pop_it/app/pages/home/dialogs/common_dialog.dart';
import '../../../float_view/float_view.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../data/storage_keys.dart';
import '../../../widgets/button_image_default.dart';
import '../../../widgets/button_neumorphic.dart';
import '../../../widgets/slider_neumorphic.dart';
import '../controllers/home_controller.dart';
import '../event/event.dart';

class SettingDialog extends StatefulWidget {
  const SettingDialog({super.key});

  @override
  State<SettingDialog> createState() => _SettingsState();
}

class _SettingsState extends State<SettingDialog> {
  @override
  void initState() {
    super.initState();
  }

  String _selectedItem =
      GetStorage().read(StorageKeys.languageKey) ?? 'English';
  final List<String> _dropdownItems = [
    'English',
    '简体中文',
  ];
  bool _song = GetStorage().read(StorageKeys.songKey) ?? true;
  bool _music = GetStorage().read(StorageKeys.musicKey) ?? true;

  @override
  Widget build(BuildContext context) {
    final widthSize = MediaQuery.of(context).size.width;
    final heightSize = MediaQuery.of(context).size.height;
    final HomeController controller = Get.find();

    return CommonDialog(
        titleView: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/title_setting.png',
              height: 55.w,
            )),
        contentView: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SliderNeumorphic(
              sliderVar: _music,
              sliderText: AppStrings.musicString,
              onChangedSlider: (value) {
                GetStorage().write(StorageKeys.musicKey, value);
                eventBus.fire(SettingEvent(value, _song));
                setState(() {
                  _music = value;
                });
              },
            ),
            SliderNeumorphic(
              sliderVar: _song,
              sliderText: AppStrings.songString,
              onChangedSlider: (value) {
                GetStorage().write(StorageKeys.songKey, value);
                eventBus.fire(SettingEvent(_music, value));
                setState(() {
                  _song = value;
                });
              },
            ),
            SizedBox(
              height: 20.w,
            ),
            GetBuilder<HomeController>(builder: (controller) {
              return Column(
                children: [
                  Text(
                    AppStrings.languageString,
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: const Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.w,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white.withOpacity(0.5),
                          width: 2.w,
                        ),
                        borderRadius: BorderRadius.circular(5.w),
                        color: AppColors
                            .gameColorsTheme[controller.homeThemeIndex.value]
                            .primary,
                        boxShadow: [
                          BoxShadow(color: Colors.white, blurRadius: 2.w)
                        ]),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _selectedItem,
                        dropdownColor: AppColors
                            .gameColorsTheme[controller.homeThemeIndex.value]
                            .tertiary,
                        onChanged: (String? newValue) {
                          GetStorage().write(StorageKeys.languageKey, newValue);
                          controller.updatePlayName();
                          setState(() {
                            _selectedItem = newValue!;
                          });
                        },
                        items: _dropdownItems.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Container(
                              width: widthSize * 0.25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.w)),
                              child: Text(
                                item,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  // fontFamily: 'Cute-Dolphin-Regular',
                                  shadows: [
                                    Shadow(
                                      offset: const Offset(1, 1),
                                      blurRadius: 2,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              );
            })
          ],
        ),
        bottomView: ButtonImageDefault(
          buttonBorderWidth: 1,
          buttonTextIntensity: 0.6,
          imgAssets: 'assets/btn_close.png',
          onPressedCallback: () {
            FlameAudio.play('click_1.mp3');
            Get.back();
          },
        ));
  }
}
