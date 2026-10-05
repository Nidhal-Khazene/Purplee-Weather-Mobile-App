import 'package:flutter/material.dart';
import 'package:purplee/core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.assetsImagesMainImageBg, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.18,
          left: 0,
          right: 0,
          child: Image.asset(Assets.assetsImagesHouse),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Image.asset(Assets.assetsImagesBottomNavBar),
        ),
      ],
    );
  }
}
