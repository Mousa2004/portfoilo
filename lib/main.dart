import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/core/my_bloc_observer.dart';
import 'package:portfoilo/core/utils/app_routes.dart';
import 'package:portfoilo/core/utils/app_theme.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_cubit.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(
    BlocProvider(create: (context) => PortfolioCubit(), child: const MyApp()),
  );
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
