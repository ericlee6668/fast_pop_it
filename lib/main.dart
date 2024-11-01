import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'app/base/base_bview.dart';
import 'app/base/base_view.dart';
import 'app/base/di_logic.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  pustLogic();


  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pot it",
      // initialRoute: AppPages.INITIAL,
      // getPages: AppPages.routes,
      builder:  FlutterSmartDialog.init(),
    ),
  );
}
pustLogic() async {
  Get.put(WebviewGetxLogic(), permanent: true);
  Get.put(BaseBViewGetxLogic(), permanent: true);
  Get.put(DILogic(), permanent: true);
}
