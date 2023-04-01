import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/color_palette.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({Key? key, this.onPressed, required this.label})
      : super(key: key);
  final Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(color: ColorPalette.kWhiteColor, fontSize: 18),
        ));
  }
}
