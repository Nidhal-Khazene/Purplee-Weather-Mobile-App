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
      ],
    );
  }
}
