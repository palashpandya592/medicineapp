import 'package:flutter/material.dart';
import 'package:medicine_app/utils/app_colors.dart';
import 'package:medicine_app/utils/app_strings.dart';
import 'package:medicine_app/utils/app_text_style.dart';
import 'package:medicine_app/ui/views/register/register_screen.dart';

Widget loginHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 75),
      Text(
        AppString.welcome,
        style: heavyBoldTextStyle(
          35,
          AppColors.black,
        ),
      ),
      Text(
        AppString.signIn,
        style: normalBoldTextStyle(20, AppColors.grey),
      ),
      const SizedBox(height: 40),
    ],
  );
}

Widget loginBottom(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        AppString.gotoSignUpScreen,
        style: normalBoldTextStyle(15, AppColors.black),
      ),
      const SizedBox(width: 10),
      IconButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RegisterScreen()),
          );
        },
        icon: const Icon(
          Icons.arrow_right_alt,
          size: 35,
        ),
      )
    ],
  );
}
