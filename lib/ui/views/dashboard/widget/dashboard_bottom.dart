import 'package:flutter/material.dart';
import 'package:medicine_app/utils/app_colors.dart';
import 'package:medicine_app/utils/app_text_style.dart';

Widget dashboardBottom({nameText,doseText,strengthText,drugText}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(drugText,style: normalBoldTextStyle(16, AppColors.black),),
        const Divider(height: 10,color: AppColors.buttonShadowColor,thickness: 1,),
        const SizedBox(height: 10,),
        Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                10),
            boxShadow: const [
              BoxShadow(
                color: AppColors
                    .greyShadowColor,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              )
            ],
            color: AppColors.white,
          ),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment
                .center,
            children: [
              Padding(
                padding: const EdgeInsets
                    .symmetric(
                    horizontal: 30),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text(nameText),
                    Text(doseText),
                    Text(strengthText)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}