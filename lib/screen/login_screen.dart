import 'package:day_1/screen/home_screen.dart';
import 'package:day_1/utils/app_icon.dart';
import 'package:day_1/widget/app_button.dart';
import 'package:day_1/widget/app_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  child: Hero(
                    tag: 'logoMalakat',
                    child: AppIcons.logoMalakat,
                  ),
                ),
                Text(
                  'Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 50),
                AppTextField(
                  hintText: 'Email Address',
                  icon: Icon(Icons.email),
                  isBorder: true,
                ),
                SizedBox(height: 20),
                AppTextField(
                  hintText: 'Password',
                  icon: Icon(Icons.lock),
                  isBorder: true,
                ),
                SizedBox(height: 40),
                AppButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                ),
                SizedBox(height: 20),
                Text('Forgot password?'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}