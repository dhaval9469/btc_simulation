import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:btc_simulation/dashboard/ctrl/home_ctrl.dart';
import 'package:btc_simulation/res/asset.dart';
import 'package:btc_simulation/res/colors.dart';
import 'package:btc_simulation/res/textstyles.dart';
import 'package:btc_simulation/utils/responsiv.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeCtrl homeCtrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
                child: Row(
                  children: [
                    FaIcon(FontAwesomeIcons.solidCircleUser, color: AppColor.text, size: context.sp(30)),
                    SizedBox(width: context.sp(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello, Test", style: textMontserrat(context)),
                        Text("apptestting@gmail.com", style: textLato(context, height: 1)),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: context.hp(4),
                      width: context.hp(4),
                      decoration: BoxDecoration(color: AppColor.greenCard, shape: BoxShape.circle),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: context.sp(15)),
                child: Image.asset(AppAsset.cartoon, scale: 2.5),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sp(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppAsset.bitcoin, scale: 20),
                    SizedBox(width: context.sp(10)),
                    Obx(() {
                      return AnimatedFlipCounter(
                        value: homeCtrl.miningBtc.value,
                        fractionDigits: 12,
                        duration: Duration(seconds: 5),
                        curve: Curves.easeOut,
                        textStyle: textMontserrat(context, fontSize: context.sp(24)),
                      );
                    }),
                    SizedBox(width: context.sp(10)),
                    Text("BTC", style: subTextMontserrat(context, fontSize: context.sp(16))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
                child: Container(
                  height: context.hp(16),
                  width: context.hp(16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(color: AppColor.greenCard2, shape: BoxShape.circle),
                  child: Text(
                    "START",
                    style: textMontserrat(context, fontSize: context.sp(22), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.card),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.sp(12), vertical: context.sp(8)),
                    child: Row(
                      children: [
                        Container(
                          height: context.hp(6),
                          width: context.hp(6),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: AppColor.bg, shape: BoxShape.circle),
                          child: Image.asset(AppAsset.boostSpeed, scale: 20),
                        ),
                        SizedBox(width: context.sp(15)),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Boost Speed",
                                style: textMontserrat(context, fontSize: context.sp(16), fontWeight: FontWeight.bold),
                              ),
                              Text("Boost your mining speed to earn faster rewards", style: subTextMontserrat(context, height: 0)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.card),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: context.sp(12), vertical: context.sp(8)),
                    child: Row(
                      children: [
                        Image.asset(AppAsset.trophy, scale: 11),
                        SizedBox(width: context.sp(15)),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Daily Reward",
                                style: textMontserrat(context, fontSize: context.sp(16), fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Earn Coin Daily for Log in. keep Your Streak to Earn More!",
                                style: subTextMontserrat(context, height: 0),
                              ),
                              SizedBox(height: context.sp(7),),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  width: context.wp(24),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(color: AppColor.greenCard,borderRadius: BorderRadius.circular(8)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(vertical: context.sp(5)),
                                    child: Text(
                                      "Convert",
                                      style: textMontserrat(context),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
