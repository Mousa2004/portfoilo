import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_assets.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/core/utils/customed_button.dart';
import 'package:portfoilo/feature/tabs/projects/widget/customed_feature_build.dart';
import 'package:portfoilo/feature/tabs/projects/widget/customed_key_feature_item.dart';

class CustomedProjectDetails extends StatelessWidget {
  final String projectName;
  final String imageCover;
  final String aboutThisProject;
  final List<String> features;
  final List<String> technologyUsed;
  final void Function() viewLiveProjectClick;
  final void Function() viewSourceCodeClick;
  const CustomedProjectDetails({
    super.key,
    required this.projectName,
    required this.imageCover,
    required this.aboutThisProject,
    required this.technologyUsed,
    required this.features,
    required this.viewLiveProjectClick,
    required this.viewSourceCodeClick,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.15,
        vertical: height * 0.05,
      ),
      child: Container(
        height: height * 0.95,
        width: double.infinity,
        padding: EdgeInsets.only(
          left: width * 0.02,
          right: width * 0.02,
          top: height * 0.02,
        ),
        decoration: BoxDecoration(
          color: AppColors.indigo,
          borderRadius: BorderRadius.circular(12),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AutoSizeText(
                    "Flutter",
                    style: AppStyle.boldDarkGreen20.copyWith(fontSize: 18),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close_outlined, color: AppColors.iceBlue),
                  ),
                ],
              ),
              SizedBox(height: height * 0.005),
              AutoSizeText(projectName, style: AppStyle.boldWhite20),
              SizedBox(height: height * 0.01),
              Divider(color: AppColors.blue),
              SizedBox(height: height * 0.01),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  imageCover,
                  height: height * 0.73,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: height * 0.04),
              AutoSizeText("About This Project", style: AppStyle.boldWhite20),
              SizedBox(height: height * 0.02),
              AutoSizeText(
                aboutThisProject,
                style: AppStyle.regularIceBlue14.copyWith(fontSize: 16),
              ),
              SizedBox(height: height * 0.04),
              AutoSizeText("Key Features", style: AppStyle.boldWhite20),
              SizedBox(height: height * 0.02),
              Wrap(
                spacing: width * 0.02,
                runSpacing: height * 0.02,
                children: features.map((feature) {
                  return SizedBox(
                    width: width * 0.3,
                    child: CustomedKeyFeatureItem(featureName: feature),
                  );
                }).toList(),
              ),
              SizedBox(height: height * 0.04),
              AutoSizeText("Technologies Used", style: AppStyle.boldWhite20),
              SizedBox(height: height * 0.02),
              Wrap(
                spacing: width * 0.01,
                runSpacing: height * 0.02,
                children: technologyUsed
                    .map(
                      (technology) => CustomedFeatureBuild(
                        title: technology,
                        backgroundColor: AppColors.lightGreen,
                        textColor: AppColors.darkGreen,
                      ),
                    )
                    .toList(),
              ),
              SizedBox(height: height * 0.02),
              Divider(color: AppColors.darkGreen),
              SizedBox(height: height * 0.04),
              Wrap(
                spacing: width * 0.05, // المسافة بين الزرين
                runSpacing: height * 0.02, // المسافة بين الصفوف لو نزلت
                alignment: WrapAlignment.center, // عشان الزرين في النص
                children: [],
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 600) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomedButton(
                            backgroundColor: AppColors.lightGreen,
                            textColor: AppColors.darkGreen,
                            addItem: true,
                            preImageName: AppAssets.viewLive,
                            text: "View Live Project",
                            onPressed: viewLiveProjectClick,
                          ),
                        ),
                        SizedBox(width: width * 0.02),
                        Expanded(
                          child: CustomedButton(
                            backgroundColor: AppColors.green,
                            textColor: AppColors.green2,
                            imageColor: AppColors.green2,
                            addItem: true,
                            preImageName: AppAssets.github,
                            text: "View Source Code",
                            onPressed: viewSourceCodeClick,
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      children: [
                        CustomedButton(
                          backgroundColor: AppColors.lightGreen,
                          textColor: AppColors.darkGreen,
                          addItem: true,
                          preImageName: AppAssets.viewLive,
                          text: "View Live Project",
                          onPressed: viewLiveProjectClick,
                        ),
                        SizedBox(height: height * 0.02),
                        CustomedButton(
                          backgroundColor: AppColors.green,
                          textColor: AppColors.green2,
                          imageColor: AppColors.green2,
                          addItem: true,
                          preImageName: AppAssets.github,
                          text: "View Source Code",
                          onPressed: viewSourceCodeClick,
                        ),
                      ],
                    );
                  }
                },
              ),
              SizedBox(height: height * 0.04),
            ],
          ),
        ),
      ),
    );
  }
}
