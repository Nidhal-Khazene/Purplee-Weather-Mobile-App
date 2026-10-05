import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/assets.dart';

class CustomPlusNavBarIcon extends StatelessWidget {
  const CustomPlusNavBarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.assetsImagesPlusIcon,
      height: 24,
      width: 24,
      colorFilter: const ColorFilter.mode(
        AppColors.weatherSolidPurple,
        BlendMode.srcIn,
      ),
    );
  }
}
