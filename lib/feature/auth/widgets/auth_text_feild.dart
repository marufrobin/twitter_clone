import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/color_palette.dart';

class AuthTextFeild extends StatelessWidget {
  AuthTextFeild({Key? key, required this.controller}) : super(key: key);
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          focusColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                color: ColorPalette.kBlueColor,
              ))),
    );
  }
}
