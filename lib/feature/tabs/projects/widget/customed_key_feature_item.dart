import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';

class CustomedKeyFeatureItem extends StatelessWidget {
  final String featureName;
  const CustomedKeyFeatureItem({super.key, required this.featureName});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.check_sharp, color: AppColors.darkGreen),
        SizedBox(width: width * 0.01),
        Expanded(
          child: AutoSizeText(
            featureName,
            style: AppStyle.regularIceBlue14.copyWith(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
