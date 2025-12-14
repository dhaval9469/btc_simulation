
import 'package:btc_simulation/dashboard/ctrl/home_ctrl.dart';
import 'package:btc_simulation/res/translations.dart';
import 'package:btc_simulation/utils/app_navigation/route.dart';
import 'package:btc_simulation/utils/hive_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class BtcSimulationApp extends StatefulWidget {
  const BtcSimulationApp({super.key});

  @override
  State<BtcSimulationApp> createState() => _BtcSimulationAppState();
}

class _BtcSimulationAppState extends State<BtcSimulationApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      builder: EasyLoading.init(),
      translations: AppTranslations(),
      locale: HiveService().getSavedLocale(),
      fallbackLocale: Locale('en', 'US'),
      initialRoute: Routes.splash,
      getPages: Routes.routes,
    );
  }
}

class AppBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.put<HomeCtrl>(HomeCtrl());
  }
}
