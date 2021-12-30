import 'dart:ui';

import 'package:flutter/material.dart';

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

