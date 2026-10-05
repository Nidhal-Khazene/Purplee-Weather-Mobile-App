import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_fonts.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/features/home/presentation/views/widgets/home_list_nav_bar_icon.dart';
import 'package:purplee/features/home/presentation/views/widgets/home_map_nav_bar_icon.dart';
import 'package:purplee/features/home/presentation/views/widgets/home_plus_nav_bar_icon.dart';

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
          top: MediaQuery.of(context).size.height * 0.1,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Montreal',
                textAlign: TextAlign.center,
                style: AppTextStyles.regular34.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 12),

              Text(
                '19°',
                textAlign: TextAlign.center,
                style: AppTextStyles.extraLight96.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 12),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Mostly Clear\n',
                      style: AppTextStyles.semibold20.copyWith(
                        color: const Color(0x99EBEBF5),
                        fontFamily: AppFonts.primary,
                      ),
                    ),
                    TextSpan(
                      text: 'H:24°   L:18°',
                      style: AppTextStyles.semibold20.copyWith(
                        color: Colors.white,
                        fontFamily: AppFonts.primary,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
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
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.0525,
          left: 0,
          right: 0,
          child: const HomePlusNavBarIcon(),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.03,
          left: MediaQuery.of(context).size.width * 0.08,
          child: const HomeMapNavBarIcon(),
        ),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.04,
          right: MediaQuery.of(context).size.width * 0.1,
          child: const HomeListNavBarIcon(),
        ),
      ],
    );
  }
}
