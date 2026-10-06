import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';

class WeatherCitiesListViewBody extends StatelessWidget {
  const WeatherCitiesListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.assetsImagesWeatherBg, fit: BoxFit.cover),
        ),
        Positioned(
          top: 66,
          left: 16,
          right: 16,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                    color: AppColors.darkPrimary,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    'Weather',
                    style: AppTextStyles.regular28.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
