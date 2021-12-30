import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medicine_app/common/app_colors.dart';

TextStyle normalBoldTextStyle(double size, color,
        {double? letterSpacing, double height = 1.2}) =>
    TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing,
        wordSpacing: 0,
        height: height);

TextStyle heavyBoldTextStyle(double size, color,
        {double? letterSpacing, double height = 1.2}) =>
    TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w600,
        color: color ?? Colors.black,
        letterSpacing: letterSpacing,
        wordSpacing: 0,
        height: height);

Widget buildTextFormField(
    {TextEditingController? controller,TextInputType? keyboardType, String? hintText, Function? validator}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(10, 15, 10, 20),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (value) {
        validator!(value);
      },
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.pink),
            borderRadius: BorderRadius.circular(15)),
        hintText: hintText,
        hintStyle: normalBoldTextStyle(16, AppColors.grey),
      ),
    ),
  );
}

Widget submitBox() {
  return Container(
    height: 45,
    margin: const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.pink,
              AppColors.lightOrange,
            ])),
    child: Center(
      child: Text(
        'submit',
        style: normalBoldTextStyle(
          15,
          AppColors.themeColorRedLight,
        ),
      ),
    ),
  );
}
