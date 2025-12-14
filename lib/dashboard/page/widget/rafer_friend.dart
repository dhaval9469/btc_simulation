import 'package:btc_simulation/dashboard/ctrl/home_ctrl.dart';
import 'package:btc_simulation/res/colors.dart';
import 'package:btc_simulation/res/textstyles.dart';
import 'package:btc_simulation/utils/responsiv.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ReferFriendsPage extends StatefulWidget {
  const ReferFriendsPage({super.key});

  @override
  State<ReferFriendsPage> createState() => _ReferFriendsPageState();
}

class _ReferFriendsPageState extends State<ReferFriendsPage> {
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
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColor.card),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: context.sp(10), vertical: context.sp(8)),
                  child: Column(
                    children: [
                      Text("Your Balance", style: textMontserrat(context, fontSize: context.sp(16))),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            homeCtrl.totalMineBtc.value.toStringAsFixed(12),
                            style: textMontserrat(context, fontSize: context.sp(20)),
                          ),
                          SizedBox(width: context.sp(10)),
                          Text("BTC", style: subTextMontserrat(context, fontSize: context.sp(16))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Text(
                "Active your Referrals, boost your mining speed, and maximize your earnings!",
                textAlign: TextAlign.center,
                style: subTextMontserrat(context),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.sp(15), vertical: context.sp(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Refer & Earn", style: textLato(context, fontSize: context.sp(18))),
                  Container(
                    width: context.wp(28),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColor.greenCard,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: context.sp(5)),
                      child: Text("Invite Now", style: textLato(context, fontWeight: FontWeight.bold)),
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
                  padding: EdgeInsets.symmetric(horizontal: context.sp(12), vertical: context.sp(8)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Your Referral Code", style: textMontserrat(context)),
                          FaIcon(FontAwesomeIcons.shareNodes, color: AppColor.text, size: context.sp(15)),
                        ],
                      ),
                      SizedBox(height: context.sp(10)),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: AppColor.bg),
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: context.sp(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "H30OPV",
                                style: textMontserrat(
                                  context,
                                  fontWeight: FontWeight.bold,
                                  fontSize: context.sp(18),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: context.sp(10)),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColor.bg),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: context.sp(6)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.copy,
                                      color: AppColor.subText,
                                      size: context.sp(15),
                                    ),
                                    SizedBox(width: context.sp(10)),
                                    Text(
                                      "Copy Code",
                                      style: subTextMontserrat(
                                        context,
                                        fontSize: context.sp(15),
                                        fontWeight: FontWeight.w600,
                                      ),
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
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: AppColor.bg),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: context.sp(6)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.slideshare,
                                      color: AppColor.subText,
                                      size: context.sp(15),
                                    ),
                                    SizedBox(width: context.sp(10)),
                                    Text(
                                      "Share",
                                      style: subTextMontserrat(
                                        context,
                                        fontSize: context.sp(15),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: context.sp(15)),

                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.gift, color: AppColor.subText, size: context.sp(15)),
                          SizedBox(width: context.sp(10)),
                          Text(
                            "Benefits of Referrals",
                            style: subTextLato(
                              context,
                              fontSize: context.sp(15),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: context.sp(5)),
                      benefitRow('Get 0.00000005 BTC for every referral'),
                      benefitRow('Your friends get huge bonuses to start mining'),
                      benefitRow('Unlimited referrals – invite as many as you want!'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  benefitRow(String text) {
    return Row(
      children: [
        FaIcon(FontAwesomeIcons.circleCheck, color: AppColor.subText, size: context.sp(12)),
        SizedBox(width: context.sp(10)),
        Text(text, style: subTextLato(context)),
      ],
    );
  }
}
