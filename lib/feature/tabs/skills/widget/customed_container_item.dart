import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';

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

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: height * 0.2,
        width: width * 0.22,
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkBlueGrey,
          border: Border.all(
            color: isHovered ? AppColors.darkGreen : AppColors.darkBlueGrey,
            width: isHovered ? 2 : 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(widget.icon, size: 40, color: AppColors.white),
            AutoSizeText(
              widget.title,
              style: AppStyle.boldWhite14.copyWith(
                color: isHovered ? AppColors.darkGreen : AppColors.white,
              ),
            ),
            AutoSizeText(widget.subTitle, style: AppStyle.regularGrey14),
          ],
        ),
      ),
    );
  }
}
