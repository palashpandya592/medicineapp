import 'package:flutter/material.dart';
import 'package:medicine_app/utils/app_colors.dart';
import 'package:medicine_app/utils/app_text_style.dart';

Widget buildTextFormField(
    {TextEditingController? controller,
    TextInputType? keyboardType,
    String? hintText,
    validator,
    onChanged,  Key? key}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: TextFormField(
      key:key,
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
