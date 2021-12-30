import 'package:flutter/material.dart';
import 'package:medicine_app/bussiness_logic/utills/app_colors.dart';
import 'package:medicine_app/bussiness_logic/utills/app_strings.dart';
import 'package:medicine_app/bussiness_logic/utills/app_text_style.dart';

Widget registerHeader(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_sharp,
          size: 25,
        ),
      ),
      const SizedBox(height: 15),
      Text(
        AppString.createAccount,
        style: heavyBoldTextStyle(
          28,
          AppColors.black,
        ),
      ),
      Text(
        AppString.signUp,
        style: normalBoldTextStyle(18, AppColors.grey)
            .copyWith(height: 1.8),
      ),
      const SizedBox(height: 15),
    ],
  );
}
