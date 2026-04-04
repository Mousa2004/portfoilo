import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/tabs/projects/widget/customed_feature_build.dart';

class CustomedProjectContainer extends StatefulWidget {
  final String projecName;
  final String projecDescription;
  final String coverProjecName;
  final List<String> features;

  final void Function()? viewDetailsClick;
  const CustomedProjectContainer({
    super.key,
    required this.coverProjecName,
    required this.projecName,
    required this.projecDescription,
    required this.features,
    this.viewDetailsClick,
  });

  @override
  State<CustomedProjectContainer> createState() =>
      _CustomedProjectContainerState();
}

class _CustomedProjectContainerState extends State<CustomedProjectContainer> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: widget.viewDetailsClick,
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedScale(
          scale: isHovered ? 1.05 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: height * 0.8,
            width: width * 0.25,
            decoration: BoxDecoration(
              color: AppColors.indigo,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isHovered ? AppColors.darkGreen : AppColors.indigo,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: AnimatedScale(
                    scale: isHovered ? 1.1 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: Image.asset(
                      widget.coverProjecName,
                      height: height * 0.4,
                      width: width * 0.25,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: height * 0.02,
                        horizontal: width * 0.01,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            "Flutter",
                            style: AppStyle.boldDarkGreen18,
                          ),
                          SizedBox(height: height * 0.01),
                          AutoSizeText(
                            widget.projecName,
                            style: isHovered
                                ? AppStyle.boldDarkGreen20
                                : AppStyle.boldWhite20,
                          ),
                          SizedBox(height: height * 0.01),
                          AutoSizeText(
                            widget.projecDescription,
                            style: AppStyle.boldWhite14.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.iceBlue,
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: height * 0.02),
                          Wrap(
                            spacing: width * 0.007,
                            runSpacing: height * 0.01,
                            children: widget.features
                                .map(
                                  (feature) =>
                                      CustomedFeatureBuild(title: feature),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
