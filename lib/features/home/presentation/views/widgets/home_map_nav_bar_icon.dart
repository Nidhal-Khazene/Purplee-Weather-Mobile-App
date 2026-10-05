import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/assets.dart';

class HomeMapNavBarIcon extends StatelessWidget {
  const HomeMapNavBarIcon({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        Assets.assetsImagesMapIcon,
        height: 52,
        width: 52,
      ),
    );
  }
}
