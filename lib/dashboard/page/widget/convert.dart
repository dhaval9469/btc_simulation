import 'package:btc_simulation/dashboard/ctrl/home_ctrl.dart';
import 'package:btc_simulation/res/asset.dart';
import 'package:btc_simulation/res/colors.dart';
import 'package:btc_simulation/res/textstyles.dart';
import 'package:btc_simulation/utils/responsiv.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  final HomeCtrl homeCtrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FaIcon(FontAwesomeIcons.arrowLeft, color: AppColor.text, size: context.sp(20)),
                  Text("BTC Miner Convert", style: textMontserrat(context, fontSize: context.sp(16))),
                  FaIcon(FontAwesomeIcons.arrowLeft, color: Colors.transparent, size: context.sp(20)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.card),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.sp(10), vertical: context.sp(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(AppAsset.superCoin, scale: 24),
                          SizedBox(width: context.wp(1.5)),
                          Text("1000", style: textMontserrat(context, fontSize: context.sp(16))),
                          Text("  =  ", style: textMontserrat(context, fontSize: context.sp(16))),
                          Image.asset(AppAsset.bitcoin, scale: 29),
                          SizedBox(width: context.wp(1.5)),
                          Text("1 BTC", style: textMontserrat(context, fontSize: context.sp(16))),
                        ],
                      ),
                      SizedBox(height: context.sp(10)),
                      Text(
                        "Converted Balance",
                        style: subTextMontserrat(context),
                      ),
                      SizedBox(height: context.sp(10)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            homeCtrl.totalMineBtc.value.toStringAsFixed(12),
                            style: textLato(context, fontSize: context.sp(16), fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: context.sp(10)),
                          Text("BTC", style: subTextMontserrat(context)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.card,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: context.hp(2.5)),
                        child: Column(
                          children: [
                            Text(
                              "Current Balance",
                              style: subTextMontserrat(context, fontSize: context.sp(15)),
                            ),
                            SizedBox(height: context.sp(10)),
                            Text(
                              homeCtrl.totalMineBtc.value.toStringAsFixed(12),
                              style: textLato(context, fontSize: context.sp(16), fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: context.sp(15)),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.card,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: context.hp(2.5)),
                        child: Column(
                          children: [
                            Text("Super Coin", style: subTextMontserrat(context, fontSize: context.sp(15))),
                            SizedBox(height: context.sp(10)),
                            Text(
                              "1000",
                              style: textLato(context, fontSize: context.sp(16), fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: AppColor.card),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.sp(10), vertical: context.sp(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Enter Super Coin", style: subTextMontserrat(context, fontSize: context.sp(15))),
                      Text("Max", style: subTextMontserrat(context, fontSize: context.sp(15))),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15)),
              child: Text(
                "Minimum 10000 coin for Convert",
                textAlign: TextAlign.center,
                style: subTextMontserrat(context, fontSize: context.sp(13)),
              ),
            ),
            SizedBox(height: context.sp(10)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(color: AppColor.greenCard, borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: context.sp(7)),
                  child: Text("Convert", style: textMontserrat(context, fontSize: context.sp(17))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
