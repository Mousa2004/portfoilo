import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_style.dart';

class CustomedAboutItem extends StatelessWidget {
  final String title;
  final String subTitle;
  const CustomedAboutItem({
    super.key,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AutoSizeText(title, style: AppStyle.boldBlue20.copyWith(fontSize: 30)),
        AutoSizeText(subTitle, style: AppStyle.regularGrey14),
      ],
    );
  }
}
