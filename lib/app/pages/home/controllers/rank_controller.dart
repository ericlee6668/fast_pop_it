import 'dart:convert';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../data/storage_keys.dart';
import '../../game/models/game_score.dart';

class RankController extends GetxController {
  RxList<GameScore> rankList = RxList<GameScore>([]);

  @override
  void onInit() {
    super.onInit();
    loadRankList();
    print('onInit');
  }

   @override
  void onClose() {
    print('onclose');
    super.onClose();
  }

  void loadRankList() {
    String jsonStr = GetStorage().read(StorageKeys.rankRecordKey)??'';
    if(jsonStr.isNotEmpty) {
      List<dynamic> jsonList = jsonDecode(jsonStr);
      List<GameScore> scoreList =
      jsonList.map((json) => GameScore.fromJson(json)).toList();
      rankList.value = scoreList;
    }else{
      rankList.value = [];
    }
  }
}
