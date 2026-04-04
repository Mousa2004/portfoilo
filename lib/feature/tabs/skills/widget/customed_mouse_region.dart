import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';

class CustomedMouseRegion extends StatefulWidget {
  final double? hight;
  final double? width;
  final Widget? child;
  bool isHovered;
  CustomedMouseRegion({
    super.key,
    this.hight,
    this.width,
    this.child,
    required this.isHovered,
  });

  @override
  State<CustomedMouseRegion> createState() => _CustomedMouseRegionState();
}

class _CustomedMouseRegionState extends State<CustomedMouseRegion> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return MouseRegion(
      onEnter: (_) => setState(() => widget.isHovered = true),
      onExit: (_) => setState(() => widget.isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: widget.hight ?? height * 0.2,
        width: widget.width ?? width * 0.22,
        padding: EdgeInsets.symmetric(horizontal: width * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkBlueGrey,
          border: Border.all(
            color: widget.isHovered
                ? AppColors.darkGreen
                : AppColors.darkBlueGrey,
            width: widget.isHovered ? 2 : 1,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}
