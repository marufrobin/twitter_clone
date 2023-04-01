import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone/theme/color_palette.dart';

import '../constant/assets_constant.dart';

class CommonAppBar {
  static AppBar getAppBar() {
    return AppBar(
      title: _twitterLogo(),
      centerTitle: true,
    );
  }

  static SvgPicture _twitterLogo() {
    return SvgPicture.asset(AssetsConstants.kTwitterLogo,
        width: 30,
        height: 30,
        colorFilter: const ColorFilter.mode(
          ColorPalette.kBlueColor,
          BlendMode.srcIn,
        ));
  }
}
