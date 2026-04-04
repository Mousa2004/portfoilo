import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';

class CustomedFeatureBuild extends StatelessWidget {
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  const CustomedFeatureBuild({
    super.key,
    required this.title,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: height * 0.01,
        horizontal: width * 0.01,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(36),
      ),
      child: AutoSizeText(
        title,
        style: AppStyle.regularWhite14.copyWith(
          color: textColor ?? AppColors.white,
        ),
      ),
    );
  }
}
