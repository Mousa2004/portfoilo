import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfoilo/core/utils/app_colors.dart';

class AppStyle {
  static TextStyle boldWhite25 = GoogleFonts.openSans(
    color: AppColors.white,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldDarkGreen18 = GoogleFonts.openSans(
    color: AppColors.darkGreen,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldGreey18 = GoogleFonts.openSans(
    color: AppColors.grey,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle boldBlue20 = GoogleFonts.openSans(
    color: AppColors.blue,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
