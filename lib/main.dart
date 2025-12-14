import 'package:btc_simulation/btc_simulation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
    ),
  );
  configLoading();
  runApp(const BtcSimulationApp());
}

void configLoading() {
  EasyLoading.instance
    ..indicatorWidget = SizedBox(
      height: 40,
      width: 40,
      child: CircularProgressIndicator(backgroundColor: Colors.grey.withAlpha(50), strokeWidth: 1, color: Colors.white),
    )
    ..radius = 10.0
    ..userInteractions = false
    ..textStyle = const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500);
}
