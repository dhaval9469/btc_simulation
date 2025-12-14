import 'package:btc_simulation/dashboard/page/home.dart';
import 'package:btc_simulation/dashboard/page/leader.dart';
import 'package:btc_simulation/dashboard/page/setting.dart';
import 'package:btc_simulation/dashboard/page/referral.dart';
import 'package:btc_simulation/res/asset.dart';
import 'package:btc_simulation/res/colors.dart';
import 'package:btc_simulation/res/config.dart';
import 'package:btc_simulation/res/textstyles.dart';
import 'package:btc_simulation/utils/responsiv.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  final pages = [const HomePage(), const ReferralPage(), const RewardPage(), const ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: AppConfig.bottomBarValue,
        builder: (BuildContext context, int value, Widget? child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: AppConfig.bottomBarValue,
        builder: (BuildContext context, int bValue, _) {
          return BottomNavigationBar(
            backgroundColor: AppColor.card,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.text,
            unselectedItemColor: AppColor.subText,
            selectedLabelStyle: textLato(context, fontSize: context.sp(14), fontWeight: FontWeight.w600),
            unselectedLabelStyle: subTextLato(context, fontSize: context.sp(13)),
            currentIndex: bValue,
            onTap: (value) async {
              AppConfig.bottomBarValue.value = value;
            },
            items: [
              BottomNavigationBarItem(
                icon: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Image.asset(
                    AppConfig.bottomBarValue.value == 0 ? AppAsset.homes : AppAsset.home,
                    key: ValueKey<bool>(AppConfig.bottomBarValue.value == 0),
                    color: AppConfig.bottomBarValue.value == 0 ? AppColor.text : AppColor.subText,
                    scale: 20,
                  ),
                ),
                label: 'bh'.tr,
              ),

              BottomNavigationBarItem(
                icon: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Image.asset(
                    AppConfig.bottomBarValue.value == 1 ? AppAsset.referrals : AppAsset.referral,
                    key: ValueKey<bool>(AppConfig.bottomBarValue.value == 1),
                    color: AppConfig.bottomBarValue.value == 1 ? AppColor.text : AppColor.subText,
                    scale: 20,
                  ),
                ),
                label: 'br'.tr,
              ),

              BottomNavigationBarItem(
                icon: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Image.asset(
                    AppConfig.bottomBarValue.value == 2 ? AppAsset.leaderboards : AppAsset.leaderboard,
                    key: ValueKey<bool>(AppConfig.bottomBarValue.value == 2),
                    color: AppConfig.bottomBarValue.value == 2 ? AppColor.text : AppColor.subText,
                    scale: 20,
                  ),
                ),
                label: 'bl'.tr,
              ),

              BottomNavigationBarItem(
                icon: AnimatedSwitcher(
                  duration: Duration(milliseconds: 500),
                  transitionBuilder: (Widget child, Animation<double> animation) {
                    return FadeTransition(opacity: animation, child: child);
                  },
                  child: Image.asset(
                    AppConfig.bottomBarValue.value == 3 ? AppAsset.gears : AppAsset.gear,
                    key: ValueKey<bool>(AppConfig.bottomBarValue.value == 3),
                    color: AppConfig.bottomBarValue.value == 3 ? AppColor.text : AppColor.subText,
                    scale: 20,
                  ),
                ),
                label: 'bs'.tr,
              ),
            ],
          );
        },
      ),
    );
  }
}
