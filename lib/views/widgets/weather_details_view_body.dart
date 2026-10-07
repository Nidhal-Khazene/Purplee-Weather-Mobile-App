import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';

class WeatherDetailsViewBody extends StatelessWidget {
  const WeatherDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.assetsImagesWeatherBg, fit: BoxFit.cover),
        ),
        Positioned(
          top: 100,
          right: 0,
          left: 0,
          child: Image.asset(Assets.assetsImagesWeatherBgShadow),
        ),
        Positioned(
          bottom: 20,
          right: -120,
          left: 0,
          child: Image.asset(Assets.assetsImagesWeatherBgShadow),
        ),

        Positioned(
          top: 66,
          left: 16,
          right: 16,
          bottom: 0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Montreal',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular34(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '19°',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semibold18(
                        context,
                      ).copyWith(color: AppColors.darkSecondary),
                    ),
                    Text(
                      '| Mostly Clear ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semibold18(
                        context,
                      ).copyWith(color: AppColors.darkSecondary),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
