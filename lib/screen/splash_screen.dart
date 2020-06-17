import 'package:flutter/material.dart';
import '../widget/app_icon.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

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

}
