import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/color_palette.dart';

class AuthTextField extends StatefulWidget {
  AuthTextField(
      {Key? key,
      required this.controller,
      required this.labelText,
      this.isObsucre = false})
      : super(key: key);
  final TextEditingController controller;
  final String labelText;

  final bool isObsucre;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  bool isObscureVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isObsucre ? isObscureVisible : false,
      decoration: InputDecoration(
          suffixIcon: widget.isObsucre ? _passwordEyeButton() : null,
          labelText: widget.labelText,
          labelStyle: TextStyle(fontSize: 18),
          // focusColor: Colors.red,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: const BorderSide(
                color: ColorPalette.kBlueColor,
              ))),
    );
  }

  IconButton _passwordEyeButton() {
    return IconButton(
        onPressed: () => setState(() => isObscureVisible = !isObscureVisible),
        icon: isObscureVisible
            ? Icon(Icons.visibility_rounded)
            : Icon(Icons.visibility_off_rounded));
  }
}
