import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../../float_view/float_view.dart';
import '../../../data/app_colors.dart';
import '../../../data/app_sizes.dart';
import '../../../data/app_string.dart';
import '../../../data/storage_keys.dart';
import '../../../widgets/button_neumorphic.dart';
import '../../../widgets/slider_neumorphic.dart';
import '../controllers/home_controller.dart';
import '../event/event.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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

    return Obx(
      () => Dialog(
        insetPadding: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: Colors.transparent,
        child: Container(
          alignment: Alignment.bottomCenter,
          width: widthSize * 0.9,
          // 90% of screen
          height: heightSize * 0.7,
          // 90% of screen
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/bg_dialog_rank_list.png')),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              const Spacer(),
              Text(
                AppStrings.settingsString,
                style: TextStyle(
                  fontSize: widthSize * TextSizes.configTittleSize,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: const Offset(2, 2),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const Spacer(),
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
                  const Spacer(),
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
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      AppStrings.languageString,
                      style: TextStyle(
                        fontSize: widthSize * TextSizes.configTittleSize,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: const Offset(1, 1),
                            blurRadius: 2,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors
                              .gameColorsTheme[controller.homeThemeIndex.value]
                              .tertiary,
                          width: widthSize * 0.0015,
                        ),
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors
                            .gameColorsTheme[controller.homeThemeIndex.value]
                            .primary,
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _selectedItem,
                          dropdownColor: AppColors
                              .gameColorsTheme[controller.homeThemeIndex.value]
                              .tertiary,
                          onChanged: (String? newValue) {
                            GetStorage()
                                .write(StorageKeys.languageKey, newValue);
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
                                child: Text(
                                  item,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
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
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: ButtonNeumorphic(
                  width: 0.2,
                  height: 0.06,
                  onPressedCallback: () {
                    Get.back();
                  },
                  buttonTextBorder: true,
                  buttonBorderState: true,
                  buttonText: AppStrings.backString,
                  buttonBorder: widthSize * 0.0015,
                  buttonFontWidth: TextSizes.mainBtnSize,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
