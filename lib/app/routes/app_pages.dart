import 'package:get/get.dart';
import '../pages/game/bindings/game_binding.dart';
import '../pages/game/views/game_view.dart';
import '../pages/home/bindings/home_binding.dart';
import '../pages/home/views/home_view.dart';
import '../pages/home/views/mode_view.dart';
import '../pages/home/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;
  static const SECOND = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.GAME,
      page: () => const GameView(),
      binding: GameBinding(),
    ),
    GetPage(
      name: _Paths.MODE,
      page: () => const ModeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: HomeBinding(),
    ),
    /* GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: HomeBinding(),
    ),*/
  ];
}
