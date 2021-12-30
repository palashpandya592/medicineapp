import 'package:flutter/material.dart';
import 'package:medicine_app/bussiness_logic/utills/app_colors.dart';
import 'package:medicine_app/bussiness_logic/utills/app_text_style.dart';

Widget buildTextFormField(
    {TextEditingController? controller,
    TextInputType? keyboardType,
    String? hintText,
    validator,
    onChanged}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: TextFormField(
      controller: controller,
      onChanged: onChanged,
      keyboardType: keyboardType,
      validator: validator,
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
