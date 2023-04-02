import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/color_palette.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      this.onPressed,
      required this.label,
      this.bgColor = ColorPalette.kBlueColor})
      : super(key: key);
  final Function()? onPressed;
  final String label;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            elevation: 0,
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25))),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
              color: bgColor == ColorPalette.kWhiteColor
                  ? Colors.black
                  : ColorPalette.kWhiteColor,
              fontSize: 18),
        ));
  }
}
