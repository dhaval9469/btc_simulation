import 'package:btc_simulation/utils/app_navigation/navigation.dart';
import 'package:btc_simulation/utils/app_navigation/route.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    startingHandle();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  startingHandle() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigation.pushNamed(Routes.bottom);
  }
}
