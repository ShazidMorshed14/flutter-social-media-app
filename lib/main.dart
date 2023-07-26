import 'package:flutter/material.dart';
import 'package:social_media_app/pages/home_page.dart';
import 'package:social_media_app/pages/login_page.dart';
import 'package:social_media_app/styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background),
      initialRoute: '/',
      routes: {'/': (context) => LoginPage(), '/home': (context) => HomePage()},
    );
  }
}
