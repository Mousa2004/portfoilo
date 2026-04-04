import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/tabs/skills/widget/customed_mouse_region.dart';

class CustomedContainerItem extends StatefulWidget {
  final String title;
  final String subTitle;
  final IconData icon;

  const CustomedContainerItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  @override
  State<CustomedContainerItem> createState() => _CustomedContainerItemState();
}

class _CustomedContainerItemState extends State<CustomedContainerItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return CustomedMouseRegion(
      isHovered: isHovered,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.01,
            vertical: height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(widget.icon, size: 40, color: AppColors.white),
              SizedBox(height: height * 0.02),
              AutoSizeText(
                widget.title,
                style: AppStyle.boldWhite14.copyWith(
                  color: isHovered ? AppColors.darkGreen : AppColors.white,
                ),
              ),
              SizedBox(height: height * 0.01),
              AutoSizeText(widget.subTitle, style: AppStyle.regularGrey14),
            ],
          ),
        ),
      ),
    );
  }
}
