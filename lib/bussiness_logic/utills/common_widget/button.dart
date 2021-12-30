import 'package:flutter/material.dart';
import 'package:medicine_app/bussiness_logic/utills/app_colors.dart';
import 'package:medicine_app/bussiness_logic/utills/app_text_style.dart';

Widget submitBox({onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
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
    ),
  );
}
