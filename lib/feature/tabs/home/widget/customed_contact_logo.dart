import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';

class CustomedContactLogo extends StatefulWidget {
  final String logoPath;
  final VoidCallback? onTap;

  const CustomedContactLogo({super.key, required this.logoPath, this.onTap});

  @override
  State<CustomedContactLogo> createState() => _CustomedContactLogoState();
}

class _CustomedContactLogoState extends State<CustomedContactLogo> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        onTap: widget.onTap,
        borderRadius: BorderRadius.circular(100),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: EdgeInsets.symmetric(vertical: height * 0.04),
          padding: EdgeInsets.symmetric(
            vertical: height * 0.01,
            horizontal: width * 0.01,
          ),
          decoration: BoxDecoration(
            color: isHovered
                ? AppColors
                      .darkGreen // hover color
                : AppColors.lightBlue, // normal color
            borderRadius: BorderRadius.circular(100),
            boxShadow: isHovered
                ? [
                    BoxShadow(
                      color: AppColors.backgroundColor,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: Image.asset(
            widget.logoPath,
            height: height * 0.05,
            width: width * 0.04,
            fit: BoxFit.scaleDown,
            color: isHovered ? Colors.white : AppColors.darkGreen,
          ),
        ),
      ),
    );
  }
}
