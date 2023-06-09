import 'package:flutter/material.dart';
import 'package:twitter_clone/feature/auth/screens/signup_screen.dart';
import 'package:twitter_clone/theme/app_theme.dart';

void main() {
  runApp(const Boot());
}

class Boot extends StatelessWidget {
  const Boot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: SignupScreen(),
    );
  }
}
