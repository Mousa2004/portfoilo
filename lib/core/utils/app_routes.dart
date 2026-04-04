import 'package:flutter/material.dart';
import 'package:portfoilo/feature/portfolio/presentation/my_portfolio.dart';
import 'package:portfoilo/feature/tabs/projects/presentation/projects_tab.dart';

class AppRoutes {
  static const String myPortfolio = '/myPortfolio';
  static const String projects = '/projects';

  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.myPortfolio: (context) => const MyPortfolio(),
    AppRoutes.projects: (context) => const ProjectsTab(),
  };
}
