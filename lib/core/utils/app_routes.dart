import 'package:flutter/material.dart';
import 'package:portfoilo/feature/portfolio/presentation/my_portfolio.dart';

class AppRoutes {
  static const String myPortfolio = '/myPortfolio';

  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.myPortfolio: (context) => const MyPortfolio(),
  };
}
