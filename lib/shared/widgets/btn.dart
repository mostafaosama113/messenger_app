import 'package:flutter/material.dart';
import 'package:messenger_app/shared/contants/color_manger.dart';
import 'package:messenger_app/shared/contants/fonts_manger.dart';
import 'package:messenger_app/shared/contants/values_manger.dart';

Widget btn({required String text, required Function onClick}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: AppPadding.pw18),
    child: InkWell(
      onTap: () => onClick(),
      child: Material(
        elevation: 5,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(
          AppRadius.r4,
        ),
        child: Container(
          color: ColorManger.mainColor,
          height: AppHeight.h50,
          width: double.infinity,
          child: Center(
            child: Text(
              text,
              style: btnStyle(),
            ),
          ),
        ),
      ),
    ),
  );
}
