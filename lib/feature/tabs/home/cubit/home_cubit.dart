import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilo/feature/tabs/home/cubit/home_state.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  Future<void> launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }
}
