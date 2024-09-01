import 'package:flutter/material.dart';
import 'package:nmf_custom_template/utils/app_constants.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle basicTextStyle({
    String fontFamily = AppFonts.poppins,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    Color? color,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle get defaultTextStyle {
    return const TextStyle(
      fontFamily: AppFonts.poppins,
      fontSize: 14,
    );
  }

  static TextStyle get defaultTitleTextStyle {
    return const TextStyle(
      fontFamily: AppFonts.poppins,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get textFieldTextStyle {
    return const TextStyle(
      fontFamily: AppFonts.poppins,
      fontWeight: FontWeight.w600,
      fontSize: 18,
    );
  }

  static TextStyle get textFieldHintStyle {
    return const TextStyle(
      fontFamily: AppFonts.poppins,
    );
  }
}
