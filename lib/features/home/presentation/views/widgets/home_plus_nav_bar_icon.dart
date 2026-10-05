import 'package:flutter/material.dart';
import 'package:purplee/shared/widgets/custom_plus_nav_bar_icon.dart';

class HomePlusNavBarIcon extends StatelessWidget {
  const HomePlusNavBarIcon({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const CustomPlusNavBarIcon(),
    );
  }
}
