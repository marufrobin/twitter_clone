import 'package:flutter/material.dart';
import 'package:twitter_clone/common/common_app_bar.dart';
import 'package:twitter_clone/feature/auth/widgets/auth_text_feild.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final appBar = CommonAppBar.getAppBar();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Text Feild 1
            AuthTextFeild(controller: emailController),
            //Text Feild 2
            AuthTextFeild(controller: passWordController),

            //Button
            //TextSpan
          ],
        ),
      ),
    );
  }
}
