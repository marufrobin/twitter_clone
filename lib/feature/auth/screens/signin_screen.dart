import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:twitter_clone/common/common_app_bar.dart';
import 'package:twitter_clone/common/common.dart';
import 'package:twitter_clone/feature/auth/widgets/auth_text_feild.dart';
import 'package:twitter_clone/theme/color_palette.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);
  static route(BuildContext context) {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => SigninScreen(),
        ));
  }

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final appBar = CommonAppBar.getAppBar();
  final emailController = TextEditingController();
  final passWordController = TextEditingController();
  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();

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
                    label: "Signin",
                    onPressed: () {
                      if (kDebugMode) {
                        print("Login pressed");
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
                    text: "Don't have any account?",
                    style: const TextStyle(
                      color: ColorPalette.kGreyColor,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                          text: " Signup",
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
