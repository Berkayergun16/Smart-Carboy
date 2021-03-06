import 'package:bixos_project/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSvgIcon extends StatelessWidget {
  const AppSvgIcon({
    Key? key,
    required this.assetPath,
    this.percent = .1,
    this.color,
  }) : super(key: key);
  final String assetPath;
  final double percent;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetPath,
      height: ScreenSize().dynamicHeight(percent),
      color: color,
    );
  }
}
