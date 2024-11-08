import 'dart:async';
import 'dart:convert';

import 'package:confetti/confetti.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pop_it/app/pages/game/mode/score_mode.dart';

import '../../../ac_helper.dart';
import '../../../float_view/float_view.dart';
import '../../../data/game_modes.dart';
import '../../../data/linear_time.dart';
import '../../../data/storage_keys.dart';
import '../../../data/values.dart';
import '../../home/controllers/home_controller.dart';
import '../../home/event/event.dart';
import '../mode/memory_mode.dart';
import '../models/game_button_status.dart';
import '../models/game_score.dart';
import '../widgets/vibration_animation.dart';
import '../mode/classic_mode.dart';

class GameController extends GetxController with GetTickerProviderStateMixin {
//
  static List<Function(bool music, bool song)> settingsListener = [];

  static void onSettingsChanged(bool music, bool song) {
    for (final (index, _) in settingsListener.indexed) {
      settingsListener[index](music, song);
    }
  }

  static List<Function(int theme)> themeListener = [];

  static void onThemeChange(int theme) {
    for (final (index, _) in themeListener.indexed) {
      themeListener[index](theme);
    }
  }

  // final InterstitialAdWidget _adManager = InterstitialAdWidget();
  RxInt gameThemeIndex = AppValues().themIndexValue.obs;
  int animationTime = 65;
  int gameMode = 0;

  Rx<bool> playing = false.obs;
  late LinearTimerController gameTimerController;
  late VibrationAnimationController controlAnimationController;
  Rx<bool> gameOver = false.obs;
  Rx<bool> restartGame = false.obs;
  Rx<bool> goBackHome = false.obs;
  double scoreBoxSize = 0;
  RxList<Widget> scoreAnimations = <Widget>[].obs;

  Rx<int> level = 0.obs;
  Rx<int> score = 0.obs;
  int scoreRecord = 0;
  int newScoreRecord = 0;

  Rx<ClassicMode> classicMode = ClassicMode().obs;
  Rx<ScoreMode> scoreMode = ScoreMode().obs;
  Rx<MemoryMode> memoryMode = MemoryMode().obs;

  bool canPlayMusic = GetStorage().read(StorageKeys.musicKey) ?? true;
  bool canPlaySong = GetStorage().read(StorageKeys.songKey) ?? true;
  AudioPlayer? _musicPlayer;
  final HomeController controller = Get.find();
  final confettiController = ConfettiController(
    duration: const Duration(seconds: 1),
  );

  List<Rx<GameButtonStatus>> gameButtons = [
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
    GameButtonStatus().obs,
  ].obs;

  @override
  void onInit() {
    // _adManager.loadAd();
    settingsListener.add((music, song) {
      canPlayMusic = music;
      canPlaySong = song;
      if (FlameAudio.bgm.isPlaying) {
        FlameAudio.bgm.stop();
      }
    });
    themeListener.add((theme) {
      gameThemeIndex.value = theme;
    });
    controlAnimationController = VibrationAnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    gameTimerController = LinearTimerController(this);

    super.onInit();
  }

  @override
  void onReady() async {
    var data = Get.arguments;
    gameMode = data["mode"];
    startGame();
    FlameAudio.bgm.initialize();
    if (canPlayMusic) {
      _musicPlayer = await FlameAudio.loop('bg_music_2.mp3');
    }
    super.onReady();
    eventBus.on<SettingEvent>().listen((event) async {
      if (!canPlayMusic && _musicPlayer == null) {
        _musicPlayer = await FlameAudio.loop('bg_music_2.mp3');
      }
      if (event.music) {
        _musicPlayer?.resume();
      } else {
        _musicPlayer?.pause();
      }
      if (event.song) {
        SettingEvent.isSong =true;
      } else {
        SettingEvent.isSong =false;
      }
    });
    ever(level, (value) {
      if (value > 1) {
        if(confettiController.state==ConfettiControllerState.playing){
          print('game level stop confetti');
          confettiController.stop(clearAllParticles: true);
        }
          confettiController.play();
        print('game level play confetti');
      }
      print('game level=>$value');
    });
  }

  @override
  void onClose() {
    controlAnimationController.dispose();
    gameTimerController.dispose();

    FlameAudio.bgm.stop();
    _musicPlayer?.stop();
    super.onClose();
  }

  void pause() {
    playing.value = false;
    _musicPlayer?.stop();
    gameTimerController.stop();
  }

  void resume() {
    playing.value = true;
    _musicPlayer?.resume();
    gameTimerController.resume();
  }

  void startGame() {
    level.value = 0;
    score.value = 0;
    classicMode.value = ClassicMode();
    scoreMode.value = ScoreMode();
    memoryMode.value = MemoryMode();
    playing.value = false;
    gameOver.value = false;
    switch (gameMode) {
      case GameModes.CLASSIC_MODE:
        classicMode.value.start(this);
        break;
      case GameModes.SCORE_MODE:
        scoreMode.value.start(this);
        break;
      case GameModes.MEMORY_MODE:
        memoryMode.value.start(this);
        break;
      default:
    }
  }

  void gameButtonClicked(index) {
    switch (gameMode) {
      case GameModes.CLASSIC_MODE:
        classicMode.value.gameButtonClicked(index, (round) {
          playClickSound(round);
        });
        break;
      case GameModes.SCORE_MODE:
        scoreMode.value.gameButtonClicked(index, (round) {
          playClickSound(round);
        });
        break;
      case GameModes.MEMORY_MODE:
        memoryMode.value.gameButtonClicked(index, (round) {
          playClickSound(round);
        });
        break;
      default:
    }
  }

  void playClickSound(round) {
    round++;
    if (canPlaySong) {
      if (round > 0 && round <= 3) {
        FlameAudio.play('click_$round.mp3');
      } else {
        FlameAudio.play('click_1.mp3');
      }
    }
  }

  void scoreAdd() {
    switch (gameMode) {
      case GameModes.CLASSIC_MODE:
        classicMode.value.scoreAdd();
        break;
      default:
    }
  }

  void onGameTimeEnd() {
    if (playing.value) {
      lostRound();
      // _adManager.showAdIfLoaded();
      // _adManager.loadAd();
    }
  }

  void onLevelUp() {
    FlameAudio.play('level.mp3');
  }

  void lostRound() {
    FlameAudio.play('lost.mp3');
    // switch (gameMode) {
    //   case GameModes.CLASSIC_MODE:
    //     scoreRecord =
    //         GetStorage().read(StorageKeys.classicModeScoreRecordKey) ?? 0;
    //     if (scoreRecord < score.value) {
    //       GetStorage()
    //           .write(StorageKeys.classicModeScoreRecordKey, score.value);
    //       scoreRecord = score.value;
    //     }
    //     break;
    //   case GameModes.SCORE_MODE:
    //     scoreRecord =
    //         GetStorage().read(StorageKeys.scoreModeScoreRecordKey) ?? 0;
    //     if (scoreRecord < score.value) {
    //       GetStorage().write(StorageKeys.scoreModeScoreRecordKey, score.value);
    //       scoreRecord = score.value;
    //     }
    //     break;
    //   case GameModes.MEMORY_MODE:
    //     scoreRecord =
    //         GetStorage().read(StorageKeys.memoryModeScoreRecordKey) ?? 0;
    //     if (scoreRecord < score.value) {
    //       GetStorage().write(StorageKeys.memoryModeScoreRecordKey, score.value);
    //       scoreRecord = score.value;
    //     }
    //     break;
    //   default:
    // }
    scoreRecord = score.value;
    saveCoinAndRecord();
    gameTimerController.stop();
    playing.value = false;
    setActivatesButtonLed(true);
    int time = 170;
    Timer(Duration(milliseconds: time), () {
      setActivatesButtonLed(false);
      Timer(Duration(milliseconds: time), () {
        setActivatesButtonLed(true);
        Timer(Duration(milliseconds: time), () {
          setActivatesButtonLed(false);
          Timer(Duration(milliseconds: time), () {
            setActivatesButtonLed(true);
            gameOver.value = true;
          });
        });
      });
    });
    // _adManager.showAdIfLoaded();
    // _adManager.loadAd();
  }

  void setActivatesButtonLed(active) {
    for (final (index, item) in gameButtons.indexed) {
      if (item.value.activated.value) {
        gameButtons[index].value.onLed.value = active;
      }
    }
  }

  void saveCoinAndRecord() {
    controller.popCoinValue.value += scoreRecord;
    GetStorage().write(StorageKeys.popCoinKey, controller.popCoinValue.value);

    String jsonStr = GetStorage().read(StorageKeys.rankRecordKey) ?? '';
    print('json=>$jsonStr');
    List<GameScore> scoreList = [];
    if (jsonStr.isNotEmpty) {
      List<dynamic> jsonList = jsonDecode(jsonStr);
      scoreList = jsonList.map((json) => GameScore.fromJson(json)).toList();
    }
    GameScore gameScore =
        GameScore(score: scoreRecord, date: AcHelper.getTimeNow());
    scoreList.add(gameScore);
    var listMap = scoreList.map((score) => score.toJson()).toList();
    GetStorage().write(StorageKeys.rankRecordKey, jsonEncode(listMap));
  }
}
