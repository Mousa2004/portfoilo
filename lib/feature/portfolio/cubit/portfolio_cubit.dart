import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/feature/portfolio/cubit/portfolio_state.dart';
import 'package:portfoilo/feature/tabs/about/presentation/about_tab.dart';
import 'package:portfoilo/feature/tabs/contact/presentation/contact_tab.dart';
import 'package:portfoilo/feature/tabs/home/presentation/home_tab.dart';
import 'package:portfoilo/feature/tabs/projects/presentation/projects_tab.dart';
import 'package:portfoilo/feature/tabs/skills/presentation/skills_tab.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit() : super(PortfolioInitial());
  List<String> tabs = ['Home', 'About', 'Skills', 'Projects', 'Contact'];
  List<Widget> tabsWidget = [
    const HomeTab(),
    const AboutTab(),
    const SkillsTab(),
    const ProjectsTab(),
    const ContactTab(),
  ];
  int selectedTabIndex = 0;
  void changeSelectedTabIndex(int index) {
    selectedTabIndex = index;
    emit(ChangeSelectedTabIndexSuccess());
  }
}
