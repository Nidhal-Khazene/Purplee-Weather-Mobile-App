import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/assets.dart';

class HomeListNavBarIcon extends StatelessWidget {
  const HomeListNavBarIcon({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        Assets.assetsImagesListIcon,
        height: 24,
        width: 24,
      ),
    );
  }
}
