import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/core/utils/app_assets.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/core/utils/customed_button.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_cubit.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_state.dart';
import 'package:portfoilo/feature/tabs/home/cubit/home_cubit.dart';
import 'package:portfoilo/feature/tabs/home/cubit/home_state.dart';
import 'package:portfoilo/feature/tabs/home/widget/customed_contact_logo.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: width,
            child: AutoSizeText(
              "Welcome to my portfolio",
              style: AppStyle.boldDarkGreen20,
            ),
          ),
          SizedBox(height: height * 0.04),

          Wrap(
            children: [
              AutoSizeText("Hi, I'm ", style: AppStyle.boldWhite50),
              GradientText(
                'Mohamed Ayman Mousa',
                style: AppStyle.boldWhite50,
                colors: [
                  AppColors.darkBlue,
                  AppColors.darkGreen,
                  AppColors.purple,
                ],
              ),
            ],
          ),
          SizedBox(height: height * 0.04),
          AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText(
                'Software Engineer',
                textStyle: AppStyle.boldWhite20,
                speed: Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'Flutter Developer',
                textStyle: AppStyle.boldWhite20,
                speed: Duration(milliseconds: 100),
              ),
              TypewriterAnimatedText(
                'Mobile & Web Developer',
                textStyle: AppStyle.boldWhite20,
                speed: Duration(milliseconds: 100),
              ),
            ],
          ),
          SizedBox(height: height * 0.06),
          AutoSizeText(
            "I build high-performance, scalable mobile and web applications using Flutter, \nDart, Firebase, state management solutions, and clean architecture principles.",
            style: AppStyle.boldGrey20,
          ),
          SizedBox(height: height * 0.06),
          BlocBuilder<PortfolioCubit, PortfolioState>(
            builder: (context, state) {
              return CustomedButton(
                text: "View My Work",
                onPressed: () {
                  context.read<PortfolioCubit>().changeSelectedTabIndex(3);
                },
              );
            },
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) {
              var cubit = BlocProvider.of<HomeCubit>(context);
              return Row(
                children: [
                  CustomedContactLogo(
                    logoPath: AppAssets.github,
                    onTap: () {
                      cubit.launchURL('https://github.com/Mousa2004');
                    },
                  ),
                  SizedBox(width: width * 0.02),
                  CustomedContactLogo(
                    logoPath: AppAssets.linkedin,
                    onTap: () {
                      cubit.launchURL(
                        'https://www.linkedin.com/in/mohamed-mousa-flutter/',
                      );
                    },
                  ),
                  SizedBox(width: width * 0.02),
                  CustomedContactLogo(
                    logoPath: AppAssets.whats,
                    onTap: () {
                      cubit.launchURL('https://wa.me/201271932789');
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
