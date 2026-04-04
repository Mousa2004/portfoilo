import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/tabs/about/widget/customed_about_item.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Wrap(
              children: [
                AutoSizeText("About ", style: AppStyle.boldWhite50),
                GradientText(
                  "Me",
                  colors: [AppColors.darkBlue, AppColors.darkGreen],
                  style: AppStyle.boldWhite50,
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: AutoSizeText(
              "Crafting high-quality mobile experiences with precision and passion.",
              style: AppStyle.regularGrey18,
            ),
          ),
          SizedBox(height: height * 0.1),
          AutoSizeText(
            "Flutter Developer",
            style: AppStyle.boldWhite20.copyWith(fontSize: 25),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: width * 0.25,
              top: height * 0.02,
              bottom: height * 0.04,
            ),
            child: AutoSizeText(
              "I am a Flutter Developer with 2+ years of experience building fast, responsive, and user-friendly mobile applications."
              "I have strong experience with Flutter, Dart, Firebase, RESTful APIs, and payment integrations like Paymob."
              "Skilled in state management (Bloc, Provider, GetX) and scalable architectures like Clean Architecture and MVVM."
              "Experienced with tools like Dio, Retrofit, SQLite, Hive, Git, Postman, and Figma."
              "Passionate about writing clean code, improving performance, and delivering high-quality mobile solutions.",
              style: AppStyle.regularGrey18,
            ),
          ),
          Divider(endIndent: width * 0.25, color: AppColors.blueGrey),
          Padding(
            padding: EdgeInsets.only(
              right: width * 0.1,
              top: height * 0.03,
              bottom: height * 0.02,
            ),
            child: Wrap(
              spacing: width * 0.05,

              children: [
                CustomedAboutItem(title: "16+", subTitle: "Projects Completed"),
                CustomedAboutItem(title: "2+", subTitle: "Years Experience"),
                CustomedAboutItem(title: "5+", subTitle: "Technologies"),
              ],
            ),
          ),
          Divider(endIndent: width * 0.25, color: AppColors.blueGrey),
        ],
      ),
    );
  }
}
