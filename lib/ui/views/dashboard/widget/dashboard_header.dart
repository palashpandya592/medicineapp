import 'package:flutter/material.dart';
import 'package:medicine_app/bussiness_logic/utills/app_colors.dart';
import 'package:medicine_app/bussiness_logic/utills/app_strings.dart';
import 'package:medicine_app/bussiness_logic/utills/app_text_style.dart';
import 'package:medicine_app/bussiness_logic/utills/shared_preference/shared_preference_class.dart';

Widget dashboardHeader({greetingText}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.greyShadowColor,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 6.0,
              )
            ],
            color: AppColors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(greetingText,
                          style: heavyBoldTextStyle(20, AppColors.black)),
                      Text(
                        "${AppPreference.getString(AppString.userNameValue)}",
                        style: normalBoldTextStyle(18, AppColors.grey)
                            .copyWith(height: 1.30),
                      ),
                      Text(
                          "${AppPreference.getString(AppString.emailValue)}",
                          style: normalBoldTextStyle(18, AppColors.grey)),
                    ],
                  ),
                ),
              ),
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkhaSHuFoKvRAi5yOXIVgdV3RZYHQGD4QlaKvh7OYyAQB1ZMjF0rkZVnHpXCUeRvfzCxI&usqp=CAU",
                height: 130,
                width: 150,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
