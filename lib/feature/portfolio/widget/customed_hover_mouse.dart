import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';

class CustomedHoverMouse extends StatefulWidget {
  final String text;

  const CustomedHoverMouse({super.key, required this.text});

  @override
  State<CustomedHoverMouse> createState() => _CustomedHoverMouseState();
}

class _CustomedHoverMouseState extends State<CustomedHoverMouse> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: AnimatedDefaultTextStyle(
        duration: Duration(milliseconds: 200),
        style: AppStyle.boldGreey18.copyWith(
          color: isHovering ? AppColors.blue : AppColors.grey,
        ),
        child: AutoSizeText(widget.text),
      ),
    );
  }
}
