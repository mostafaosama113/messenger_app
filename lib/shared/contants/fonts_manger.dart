import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messenger_app/shared/contants/color_manger.dart';

class AppFontSize {
  static double s16 = 16.sp;
  static double s18 = 18.sp;
  static double s20 = 20.sp;
  static double s22 = 22.sp;
  static double s24 = 24.sp;
}

TextStyle btnStyle() {
  return TextStyle(
    color: ColorManger.white,
    fontSize: AppFontSize.s22,
  );
}
