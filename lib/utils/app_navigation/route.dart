import 'package:btc_simulation/dashboard/page/bottom.dart';
import 'package:btc_simulation/dashboard/splash_page.dart';
import 'package:get/get.dart';

mixin Routes {
  static const Transition defaultTransition = Transition.native;

  static const String splash = "/splash";
  static const String bottom = "/bottom";

  static List<GetPage<dynamic>> routes = [
    GetPage(name: splash, page: () => const SplashPage(), transition: defaultTransition),
    GetPage(name: bottom, page: () => const BottomPage(), transition: defaultTransition),
  ];
}
