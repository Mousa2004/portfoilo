import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/portfolio/widget/customed_hover_mouse.dart';
import 'package:portfoilo/feature/tabs/about/presentation/about_tab.dart';
import 'package:portfoilo/feature/tabs/contact/presentation/contact_tab.dart';
import 'package:portfoilo/feature/tabs/home/presentation/home_tab.dart';
import 'package:portfoilo/feature/tabs/projects/presentation/projects_tab.dart';
import 'package:portfoilo/feature/tabs/skills/presentation/skills_tab.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.05,
          vertical: height * 0.02,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: AutoSizeText("MohamedDev", style: AppStyle.boldBlue20),
              ),
            ),
            Expanded(
              flex: 3,
              child: DefaultTabController(
                length: 5,
                child: Column(
                  children: [
                    TabBar(
                      dividerColor: AppColors.transparent,
                      indicatorColor: AppColors.transparent,
                      tabs: [
                        Tab(child: CustomedHoverMouse(text: 'Home')),
                        Tab(child: CustomedHoverMouse(text: 'About')),
                        Tab(child: CustomedHoverMouse(text: 'Skills')),
                        Tab(child: CustomedHoverMouse(text: 'Projects')),
                        Tab(child: CustomedHoverMouse(text: 'Contact')),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          HomeTab(),
                          AboutTab(),
                          SkillsTab(),
                          ProjectsTab(),
                          ContactTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
