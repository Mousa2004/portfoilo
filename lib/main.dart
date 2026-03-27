import 'package:flutter/material.dart';
import 'package:portfoilo/core/utils/app_routes.dart';
import 'package:portfoilo/core/utils/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.myPortfolio,
      routes: AppRoutes.routes,
      theme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
