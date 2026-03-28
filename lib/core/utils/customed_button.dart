import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';

class CustomedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return MaterialButton(
      color: AppColors.blue,
      padding: EdgeInsets.symmetric(
        vertical: height * 0.03,
        horizontal: width * 0.03,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      onPressed: onPressed,
      child: AutoSizeText(text, style: AppStyle.boldWhite20),
    );
  }
}
