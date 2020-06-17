import 'package:day_1/utils/app_icon.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  splashScreen() async {
    Future.delayed(Duration(seconds: 2)).whenComplete(() {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 1200),
          pageBuilder: (i, ii, iii) => LoginScreen(),
        ),
      );
    });
  }

  @override
  void initState() {
    splashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'logoMalakat',
          child: AppIcons.logoMalakat,
        ),
      ),
    );
  }
}
