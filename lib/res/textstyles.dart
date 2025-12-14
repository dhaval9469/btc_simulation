import 'package:btc_simulation/res/colors.dart';
import 'package:btc_simulation/utils/responsiv.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textMontserrat(BuildContext context, {double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
  return GoogleFonts.montserrat(
    color: color ?? AppColor.text,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? context.sp(15),
    height: height,
  );
}

TextStyle textLato(BuildContext context, {double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
  return GoogleFonts.lato(
    color: color ?? AppColor.text,
    fontWeight: fontWeight ?? FontWeight.w600,
    fontSize: fontSize ?? context.sp(15),
    height: height,
  );
}



TextStyle subTextMontserrat(BuildContext context, {double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
  return GoogleFonts.montserrat(
    color: color ?? AppColor.subText,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontSize: fontSize ?? context.sp(14),
    height: height,
  );
}

TextStyle subTextLato(BuildContext context, {double? fontSize, FontWeight? fontWeight, Color? color, double? height}) {
  return GoogleFonts.lato(
    color: color ?? AppColor.subText,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontSize: fontSize ?? context.sp(14),
    height: height,
  );
}
