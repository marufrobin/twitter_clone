import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/feature/auth/screens/signin_screen.dart';

import '../../../common/common_app_bar.dart';
import '../../../common/rounded_button.dart';
import '../../../theme/color_palette.dart';
import '../widgets/auth_text_feild.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static route(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SignupScreen(),
        ));
  }

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final appBar = CommonAppBar.getAppBar();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  final nameController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();
    nameController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height =
        MediaQuery.of(context).size.height - appBar.preferredSize.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          // color: Colors.cyan,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //User Name
              AuthTextField(
                controller: emailController,
                labelText: "Name",
              ),
              SizedBox(
                height: height * 0.026,
              ),
              //Text Feild 1
              AuthTextField(
                controller: emailController,
                labelText: "Email",
              ),
              SizedBox(
                height: height * 0.026,
              ),
              //Text Feild 2
              AuthTextField(
                  controller: passWordController,
                  labelText: "Password",
                  isObsucre: true),
              SizedBox(
                height: height * 0.026,
              ),
              //Button
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  RoundedButton(
                    bgColor: ColorPalette.kWhiteColor,
                    label: "Signup",
                    onPressed: () {
                      if (kDebugMode) {
                        print("signup pressed");
                      }
                    },
                  )
                ],
              ),
              SizedBox(
                height: height * 0.026,
              ),
              //TextSpan
              RichText(
                text: TextSpan(
                    text: "Already have any account?",
                    style: const TextStyle(
                      color: ColorPalette.kGreyColor,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                          text: " Signin",
                          style: const TextStyle(
                            color: ColorPalette.kBlueColor,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              SigninScreen.route(context);
                              if (kDebugMode) {
                                print("signup button pressed");
                              }
                            })
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
