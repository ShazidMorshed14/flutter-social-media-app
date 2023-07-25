import 'package:flutter/material.dart';
import 'package:social_media_app/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Urbanist'), home: LoginPage());
  }
}
