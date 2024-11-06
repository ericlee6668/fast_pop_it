import 'dart:async';

import 'package:appsflyer_sdk/appsflyer_sdk.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'base_bview.dart';
import 'base_view.dart';

class HyLogic extends GetxController {
  var afid = '';
  late AppsflyerSdk appsflyerSdk = () {
    AppsFlyerOptions appsFlyerOptions = AppsFlyerOptions(
        afDevKey: "CH8htaK9WpoaHcTFF7Sktg",
        appId: "6670610305",
        showDebug: true,
        timeToWaitForATTUserAuthorization: 50,
        // for iOS 14.5
        appInviteOneLink: "",
        // Optional field
        disableAdvertisingIdentifier: false,
        // Optional field
        disableCollectASA: false); // Optional field

    return AppsflyerSdk(appsFlyerOptions);
  }();

  late StreamSubscription<ConnectivityResult> subscription;

  // bool netWorkOn = true;
  var netWorkOn = true.obs;
  var isShowDragWidget = false.obs;
  var timeOver = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadSDK();
    Connectivity().onConnectivityChanged.listen((event) {});
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // Got a new connectivity status!
      if (result == ConnectivityResult.none) {
        // print("--11------${result}-------------");
        netWorkOn.value = false;
      } else {
        if (netWorkOn.value == false) {
          BaseBViewGetxLogic blogic = Get.find<BaseBViewGetxLogic>();
          blogic.controller.reload();
          WebviewGetxLogic slogic = Get.find<WebviewGetxLogic>();
          slogic.controller.reload();
          netWorkOn.value = true;
        }
      }
    });

  }
   isAfter(){
     DateTime now = DateTime.now();
     DateTime targetDate = DateTime(2024, 11, 10);
     if (now.isAfter(targetDate)) {
        timeOver.value = true;
     } else {
       timeOver.value = false;
     }
   }

  loadSDK() async {
    appsflyerSdk.initSdk(
        registerConversionDataCallback: true,
        registerOnAppOpenAttributionCallback: true,
        registerOnDeepLinkingCallback: true);
    var afid = await appsflyerSdk.getAppsFlyerUID();

    this.afid = afid!;

    WebviewGetxLogic slogic = Get.find<WebviewGetxLogic>();
    slogic.loadCookies();

    // await Firebase.initializeApp(
    //   options: DefaultFirebaseOptions.currentPlatform,
    // );
  }

  void showDragWidget() {
    var box = GetStorage();
    if (box.read('savePathkey') != null && box.read('savePathkey') != '') {
      isShowDragWidget.value = true;
    } else {
      isShowDragWidget.value = false;
    }
  }

  @override
  void onClose() {
    subscription.cancel();
    super.onClose();
  }
}