import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';

class CustomedButton extends StatefulWidget {
  final bool? addItem;
  final double? spaceBeforeText;
  final double? horizontal;
  final double? vertical;
  final String? preImageName;
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? imageColor;

  const CustomedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.addItem,
    this.spaceBeforeText,
    this.preImageName,
    this.imageColor,
    this.horizontal,
    this.vertical,
  });

  @override
  State<CustomedButton> createState() => _CustomedButtonState();
}

class _CustomedButtonState extends State<CustomedButton> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: isHovering
              ? (widget.backgroundColor ?? AppColors.blue).withOpacity(0.8)
              : widget.backgroundColor ?? AppColors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: MaterialButton(
          color: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(
            vertical: widget.vertical ?? height * 0.03,
            horizontal: widget.horizontal ?? width * 0.03,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: widget.onPressed,
          child: widget.addItem == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.preImageName != null)
                      Image.asset(
                        widget.preImageName!,
                        height: height * 0.05,
                        width: width * 0.03,
                        color: widget.imageColor,
                        fit: BoxFit.scaleDown,
                      ),
                    SizedBox(width: widget.spaceBeforeText ?? 0),
                    AutoSizeText(
                      widget.text,
                      style: AppStyle.boldWhite20.copyWith(
                        color: widget.textColor ?? AppColors.white,
                      ),
                    ),
                  ],
                )
              : AutoSizeText(
                  widget.text,
                  style: AppStyle.boldWhite20.copyWith(
                    color: widget.textColor ?? AppColors.white,
                  ),
                ),
        ),
      ),
    );
  }
}
