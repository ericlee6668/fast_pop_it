// AppStrings.dart
import 'package:get_storage/get_storage.dart';
import 'package:pop_it/app/data/storage_keys.dart';

class AppStrings {
  static String _getStringByLanguage(String englishString, String cnString) {
    var currentLanguage = GetStorage().read(StorageKeys.languageKey) ?? 'English';

    if (currentLanguage == '简体中文') {
      return cnString;
    } else {
      return englishString;
    }
  }

  static String get playAgainsString => _getStringByLanguage('PLAY AGAIN', '重玩');
  static String get homeString => _getStringByLanguage('HOME', '首页');
  static String get noString => _getStringByLanguage('NO', '否');
  static String get yesString => _getStringByLanguage('YES', '是');
  static String get exitString => _getStringByLanguage('EXIT', '退出');
  static String get cancelString => _getStringByLanguage('CANCEL', '取消');
  static String get exitQuestionString => _getStringByLanguage('do you really quit the game?', '您确定要退出游戏吗?');
  static String get restartQuestionString => _getStringByLanguage('do you really restart the game?', '您确定要重试游戏吗?');
  static String get restartGameString => _getStringByLanguage('RESTART GAME', '重试游戏');
  static String get modesString => _getStringByLanguage('Modes', '模式');
  static String get classicModeString => _getStringByLanguage('Classic', '经典');
  static String get scoreModeString => _getStringByLanguage('Score', '分数');
  static String get memoryModeString => _getStringByLanguage('Memory', '记忆');
  static String get gameNameString => _getStringByLanguage('Pop it', 'Pop it');
  static String get playString => _getStringByLanguage('Play', '游玩');
  static String get backString => _getStringByLanguage('Back', '退出');
  static String get retryString => _getStringByLanguage('Retry', '重试');
  static String get settingsString => _getStringByLanguage('Settings', '设置');
  static String get musicString => _getStringByLanguage('Music', '音乐');
  static String get songString => _getStringByLanguage('Song', '歌曲');
  static String get languageString => _getStringByLanguage('Language', '语言');
  static String get levelString => _getStringByLanguage('Level', '等级');
  static String get scoreString => _getStringByLanguage('score', '分数');
  static String get useString => _getStringByLanguage('use', '使用');
  static String get usingString => _getStringByLanguage('using', '使用中');
  static String get buyCoinNENString => _getStringByLanguage('You do not have enough points to get this item.', '您没有足够的金币来购买该物品。');
  static String get rankString => _getStringByLanguage('rank', '排行榜');
  static String get dateString => _getStringByLanguage('date', '日期');
  static String get rankingString => _getStringByLanguage('ranking', '排名');
  static String get skinString => _getStringByLanguage('skin', '皮肤');
  static String get aboutString => _getStringByLanguage('Privacy Policies', '关于我们');
}
