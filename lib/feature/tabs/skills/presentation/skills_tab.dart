import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/tabs/skills/widget/customed_container_item.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SkillsTab extends StatelessWidget {
  const SkillsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.03,
      ),
      child: Column(
        children: [
          Wrap(
            children: [
              AutoSizeText("Technical ", style: AppStyle.boldWhite50),
              GradientText(
                "Skills",
                colors: [AppColors.darkBlue, AppColors.darkGreen],
                style: AppStyle.boldWhite50,
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: AutoSizeText(
              "Technologies and tools I work with daily",
              style: AppStyle.regularGrey18,
            ),
          ),
          SizedBox(height: height * 0.06),

          Wrap(
            alignment: WrapAlignment.center,
            spacing: width * 0.02,
            runSpacing: height * 0.025,
            children: [
              CustomedContainerItem(
                title: "Mobile Development",
                subTitle: "Dart, Flutter",
                icon: Icons.smartphone,
              ),
              SizedBox(width: width * 0.02),
              CustomedContainerItem(
                title: "State Management",
                subTitle: "Bloc, Provider, GetX",
                icon: Icons.account_tree,
              ),
              SizedBox(width: width * 0.02),
              CustomedContainerItem(
                title: "Architecture & Best Practices",
                subTitle: "Clean Architecture, SOLID, MVVM",
                icon: Icons.architecture,
              ),
              SizedBox(width: width * 0.02),
              CustomedContainerItem(
                title: "Networking & APIs",
                subTitle: "Dio, Retrofit, HTTP",
                icon: Icons.wifi,
              ),
              SizedBox(width: width * 0.02),
              CustomedContainerItem(
                title: "Backend & Databases",
                subTitle: "Firebase,  SQLite, Hive, Paymant",
                icon: Icons.storage,
              ),
              SizedBox(width: width * 0.02),
              CustomedContainerItem(
                title: "Tools & Design",
                subTitle: "Git, Figma, Postman",
                icon: Icons.design_services,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
