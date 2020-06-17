import 'package:flutter/material.dart';
import 'screen/home_screen.dart';
import 'screen/login_screen.dart';
import 'screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 1',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      routes: {
        '/'      : (context) => SplashScreen(),
        '/login' : (context) => LoginScreen(),
        '/home'  : (context) => HomeScreen(),
      },
    );
  }
}
