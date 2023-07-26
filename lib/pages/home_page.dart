import 'package:flutter/material.dart';
import 'package:social_media_app/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        centerTitle: false,
        title: Text('Socialite'),
        actions: [Icon(Icons.location_on_outlined)],
      ),
      body: ListView(children: mockUserList()),
    );
  }
}

Widget _userItem() {
  return Row(
    children: [
      Image.asset(
        'assets/temp/user1.png',
        width: 40,
        height: 40,
      ),
      SizedBox(
        width: 16,
      ),
      Text('Ishrat Jahan')
    ],
  );
}

List<Widget> mockUserList() {
  List<Widget> users = [];

  for (var i = 0; i < 2000; i++) {
    users.add(_userItem());
  }

  return users;
}
