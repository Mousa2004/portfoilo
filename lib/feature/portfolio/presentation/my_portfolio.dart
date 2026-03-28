import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_cubit.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_state.dart';
import 'package:portfoilo/feature/portfolio/widget/customed_hover_mouse.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<PortfolioCubit, PortfolioState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<PortfolioCubit>(context);
        return Scaffold(
          appBar: AppBar(
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.04),
              child: Row(
                children: [
                  GradientText(
                    "MohamedDev",
                    style: AppStyle.boldWhite25,
                    colors: [AppColors.darkGreen, AppColors.darkBlue],
                  ),
                  Spacer(flex: 2),
                  Wrap(
                    children: cubit.tabs.asMap().entries.map((entry) {
                      int index = entry.key;
                      String tab = entry.value;

                      return GestureDetector(
                        onTap: () => cubit.changeSelectedTabIndex(index),
                        child: Padding(
                          padding: EdgeInsets.only(right: width * 0.05),
                          child: CustomedHoverMouse(text: tab),
                        ),
                      );
                    }).toList(),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),

          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.05,
              vertical: height * 0.02,
            ),
            child: cubit.tabsWidget[cubit.selectedTabIndex],
          ),
        );
      },
    );
  }
}
