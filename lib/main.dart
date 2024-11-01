import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'app/base/base_bview.dart';
import 'app/base/base_view.dart';
import 'app/base/di_logic.dart';
import 'app/pages/home/controllers/purchase_controller.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'app/pages/home/controllers/home_controller.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();



  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  // ]);

  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.immersiveSticky,
  // );
  pustLogic();
  Get.put(HomeController()); // Register the homeController as a singleton
  Get.put(PurchaseController());

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pot it",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      builder:  FlutterSmartDialog.init(),
    ),
  );
}
pustLogic() async {
  Get.put(WebviewGetxLogic(), permanent: true);
  Get.put(BaseBViewGetxLogic(), permanent: true);
  Get.put(DILogic(), permanent: true);
}
