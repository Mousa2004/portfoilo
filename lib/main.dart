import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/core/my_bloc_observer.dart';
import 'package:portfoilo/core/utils/app_routes.dart';
import 'package:portfoilo/core/utils/app_theme.dart';
import 'package:portfoilo/feature/firebase_services/firebase_options.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_cubit.dart';
import 'package:portfoilo/feature/tabs/home/cubit/home_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  Bloc.observer = MyBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PortfolioCubit()),
        BlocProvider(create: (context) => HomeCubit()),
      ],
      child: const MyApp(),
    ),
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
