import 'package:flutter/material.dart';
import 'package:messenger_app/shared/contants/color_manger.dart';
import 'package:messenger_app/shared/contants/values_manger.dart';

Widget inputField({
  required String hint,
  required IconData prefixIcon,
  bool isPass = false,
  required TextInputType keyboardType,
  required TextEditingController controller,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: AppPadding.pw18, vertical: AppPadding.ph8),
    child: TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: isPass,
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefixIcon,
        ),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManger.mainColor,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.r4,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorManger.black,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.r4,
          ),
        ),
      ),
    ),
  );
}
