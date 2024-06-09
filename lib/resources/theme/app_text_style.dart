import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/resources/theme/app_theme.dart';

class AppTextStyle {
// Large Text diaplay
  static TextStyle get displayLarge => TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

// Medium Text diaplay
  static TextStyle get displayMedium => TextStyle(
        fontSize: 19.sp,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      );

// Regular Text diaplay
  static TextStyle get displayRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: AppTheme.secondaryColor,
      );

// Small Text diaplay
  static TextStyle get displaySmall => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      );
}
