
class AcHelper {
  // static String get interstitialAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-9973248356722033/2985807674";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-9973248356722033/2985807674";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }
  //
  // static String get rewardedAdUnitId {
  //   if (Platform.isAndroid) {
  //     return "ca-app-pub-3940256099942544/5224354917";
  //   } else if (Platform.isIOS) {
  //     return "ca-app-pub-3940256099942544/1712485313";
  //   } else {
  //     throw new UnsupportedError("Unsupported platform");
  //   }
  // }

  static String getTimeNow() {
    DateTime now = DateTime.now();
    String formattedDateTime =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} "
        "${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}";
    print("当前时间: $formattedDateTime");
    return formattedDateTime;
  }
}
