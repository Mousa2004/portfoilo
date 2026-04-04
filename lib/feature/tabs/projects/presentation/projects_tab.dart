import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/core/utils/app_assets.dart';
import 'package:portfoilo/core/utils/app_colors.dart';
import 'package:portfoilo/core/utils/app_style.dart';
import 'package:portfoilo/feature/tabs/home/cubit/home_cubit.dart';
import 'package:portfoilo/feature/tabs/home/cubit/home_state.dart';
import 'package:portfoilo/feature/tabs/projects/widget/customed_project_container.dart';
import 'package:portfoilo/feature/tabs/projects/widget/customed_project_details.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({super.key});

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.05,
        vertical: height * 0.03,
      ),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<HomeCubit>(context);
          return Column(
            children: [
              Wrap(
                children: [
                  AutoSizeText("Featured ", style: AppStyle.boldWhite50),
                  GradientText(
                    "Projects",
                    colors: [AppColors.darkBlue, AppColors.darkGreen],
                    style: AppStyle.boldWhite50,
                  ),
                ],
              ),
              SizedBox(height: height * 0.01),
              AutoSizeText(
                "Click a project to view screenshots, tech stack, and details",
                style: AppStyle.regularIceBlue14,
              ),
              SizedBox(height: height * 0.05),
              Wrap(
                spacing: width * 0.015,
                runSpacing: height * 0.04,
                children: [
                  CustomedProjectContainer(
                    coverProjecName: AppAssets.islamiCover,
                    projecName: "ISLAMI APP",
                    projecDescription:
                        "A comprehensive Islamic app providing Quran with audio, Hadith, Azkar, prayer times with Adhan, and digital Tasbeeh in one place.Built with a responsive UI and clean architecture using Provider for scalable and maintainable state management.",
                    features: [
                      "#Dart",
                      "#Flutter",
                      "#Provider",
                      "#HTTP",
                      "#Responsive Design",
                    ],

                    viewDetailsClick: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        constraints: BoxConstraints(maxWidth: double.infinity),
                        builder: (context) {
                          return CustomedProjectDetails(
                            projectName: "ISLAMI APP",
                            imageCover: AppAssets.islamiCover,
                            aboutThisProject:
                                'The Islami App is a comprehensive digital companion designed to support Muslims in their daily spiritual journey. It brings together essential Islamic tools in one intuitive and user-friendly platform, ensuring a seamless and enriching experience.The app provides access to the Holy Quran with full audio recitation, allowing users to read and listen anytime. It also includes a rich collection of Hadith and daily Azkar to help maintain consistent remembrance and spiritual growth.To enhance daily worship, the app features a digital Tasbeeh for easy tracking of supplications, along with an Islamic radio that streams lectures and educational content. Additionally, accurate prayer times with automatic Adhan notifications ensure users never miss their prayers.Built with a clean architecture and responsive design, the app delivers high performance and scalability while maintaining a smooth and modern user experience.',
                            features: [
                              "Quran with full audio support",
                              "Hadiths & Daily Azkar",
                              "Digital Tasbeeh (electronic prayer beads)",
                              "Islamic Radio with lectures and lessons",
                              "Prayer Times with automatic Adhan",
                              "Responsive UI for all screen sizes",
                              "Clean architecture with Provider for scalable state management",
                            ],
                            technologyUsed: [
                              "#Dart",
                              "#Flutter",
                              "#Provider",
                              "#HTTP",
                              "#Responsive Design",
                            ],

                            viewLiveProjectClick: () {
                              cubit.launchURL(
                                "https://drive.google.com/file/d/1XWnYgdFb3vxqrmMR5e27K6j9Hpfzb6Vv/view?usp=sharing",
                              );
                            },
                            viewSourceCodeClick: () {
                              cubit.launchURL(
                                "https://github.com/Mousa2004/islami_app",
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  CustomedProjectContainer(
                    coverProjecName: AppAssets.newsCover,
                    projecName: "NEWS APP",
                    projecDescription:
                        "A high-performance Flutter news app using BLoC and MVVM, delivering real-time local and global news with a smooth, responsive UI.Supports offline mode with Hive, API switching (HTTP/Dio), and dark/light themes for a flexible, scalable experience.",
                    features: [
                      "#Dart",
                      "#Flutter",
                      "#Bloc",
                      "#HTTP & Dio",
                      "MVVM",
                      "Hive",
                      "#Responsive Design",
                    ],

                    viewDetailsClick: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        constraints: BoxConstraints(maxWidth: double.infinity),
                        builder: (context) {
                          return CustomedProjectDetails(
                            projectName: "NEWS APP",
                            imageCover: AppAssets.newsCover,
                            aboutThisProject:
                                "A high-performance News App built with Flutter to deliver real-time local and global news.It follows MVVM architecture with BLoC for efficient and scalable state management.The app integrates APIs using HTTP and Dio with a flexible, switchable networking layer.Hive is used for local storage to support offline access and improve performance.Designed with a responsive UI and supports both dark and light modes for better user experience.",
                            features: [
                              "Follow local and global news in real-time",
                              "Responsive Design for smooth performance on mobile, tablet, and desktop",
                              "State Management using BLoC",
                              "API Integration with HTTP and Dio, switchable without rebuilding the code",
                              "MVVM Architecture to separate business logic from UI",
                              "Hive for local storage and offline support",
                              "Dark Mode / Light Mode based on user preference",
                              "Flexible and scalable architecture for easy maintenance and future development",
                            ],
                            technologyUsed: [
                              "#Dart",
                              "#Flutter",
                              "#Bloc",
                              "#HTTP & Dio",
                              "Hive",
                              "MVVM",
                              "#Responsive Design",
                            ],

                            viewLiveProjectClick: () {
                              cubit.launchURL(
                                "https://drive.google.com/file/d/1iXrDPK0DzWZB0pUfiFLHxlMrkNt5zaDh/view?usp=drive_link",
                              );
                            },
                            viewSourceCodeClick: () {
                              cubit.launchURL(
                                "https://github.com/Mousa2004/news_application",
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  CustomedProjectContainer(
                    coverProjecName: AppAssets.eventlyCover,
                    projecName: "EVently APP",
                    projecDescription:
                        "Evently is a simple and elegant app to track daily events, notes, and reminders with a smooth, responsive experience.Built with Provider and Firebase, it supports real-time sync, dark/light mode, and multi-language localization.",
                    features: [
                      "#Dart & Flutter",
                      "#Provider",
                      "#Firebase",
                      "#Localization",
                      "#Responsive Design",
                    ],

                    viewDetailsClick: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        constraints: BoxConstraints(maxWidth: double.infinity),
                        builder: (context) {
                          return CustomedProjectDetails(
                            projectName: "EVENTLY APP",
                            imageCover: AppAssets.eventlyCover,
                            aboutThisProject:
                                "Evently App is a simple and elegant daily event tracker built with Flutter.It allows users to record events, notes, and set reminders for important tasks.The app uses Provider for efficient state management and Firebase for real-time data and cloud storage.It supports dark and light themes along with multi-language localization.Designed with a responsive UI to ensure a smooth experience across mobile and tablet devices.",
                            features: [
                              "Record your daily events and notes",
                              "Set reminders for important events",
                              "Dark & Light Theme support for comfortable viewing",
                              "Localization support for multiple languages",
                              "State Management using Provider",
                              "Firebase Integration for real-time data and cloud storage",
                              "Responsive UI for mobile and tablet devices",
                            ],
                            technologyUsed: [
                              "#Dart",
                              "#Flutter",
                              "#Provider",
                              "#Firebase",
                              "Localization",
                              "Theming",
                              "#Responsive Design",
                            ],

                            viewLiveProjectClick: () {
                              cubit.launchURL(
                                "https://drive.google.com/file/d/1hKRh89OHY8k8j6exKAkGV8MPgbeiXL_G/view?usp=drive_link",
                              );
                            },
                            viewSourceCodeClick: () {
                              cubit.launchURL(
                                "https://github.com/Mousa2004/evently_app",
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  CustomedProjectContainer(
                    coverProjecName: AppAssets.ecommecreCover,
                    projecName: "E-commerce APP",
                    projecDescription:
                        "A full-featured Flutter e-commerce app for browsing products, managing cart, and completing secure purchases with a fast, responsive UI.Built with MVVM architecture, it supports discounts, smooth animations, and Paymob integration for secure payments.",
                    features: [
                      "#Dart & Flutter",
                      "#Bloc",
                      "#Retrofit",
                      "#Clean Architecture (MVVM)",
                      "#Responsive Design",
                    ],
                    viewDetailsClick: () {
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.transparent,
                        isScrollControlled: true,
                        constraints: BoxConstraints(maxWidth: double.infinity),
                        builder: (context) {
                          return CustomedProjectDetails(
                            projectName: "E-commerce APP",
                            imageCover: AppAssets.ecommecreCover,
                            aboutThisProject:
                                "This Flutter-based e-commerce application allows users to seamlessly browse products, manage their cart, and complete purchases securely. It features automatic discounts, promotional offers, and integrates Paymob for safe online payments. Built with a responsive design and MVVM architecture, the app ensures smooth performance and maintainable, scalable code across mobile, tablet, and desktop devices.",
                            features: [
                              "Browse products with detailed info and images",
                              "Manage cart and complete purchases easily",
                              "Automatic discounts and promotional offers",
                              "Secure online payments via Paymob",
                              "Fully responsive UI for all screen sizes",
                              "Clean Architecture (MVVM) for scalable and maintainable code",
                            ],
                            technologyUsed: [
                              "#Dart",
                              "#Flutter",
                              "#Bloc",
                              "#Clean Architecture(MVVM)",
                              "Retrofit",
                              "Paymob",
                              "#Responsive Design",
                            ],

                            viewLiveProjectClick: () {
                              cubit.launchURL(
                                "https://drive.google.com/file/d/1eZ19-l5-mxwyTuui7i088hmvmrjVVKjT/view?usp=drive_link",
                              );
                            },
                            viewSourceCodeClick: () {
                              cubit.launchURL(
                                "https://github.com/Mousa2004/E-commerce",
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  CustomedProjectContainer(
                    coverProjecName: AppAssets.moviesCover,
                    projecName: "Movies APP",
                    projecDescription:
                        "A comprehensive Islamic app providing Quran with audio, Hadith, Azkar, prayer times with Adhan, and digital Tasbeeh in one place.Built with a responsive UI and clean architecture using Provider for scalable and maintainable state management.",
                    features: [
                      "#Dart",
                      "#Flutter",
                      "#Provider",
                      "#HTTP",
                      "#Responsive Design",
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
