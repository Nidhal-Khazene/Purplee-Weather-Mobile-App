import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/widgets/custom_search_bar.dart';
import 'package:purplee/views/widgets/weather_cities_item.dart';

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
          top: 32,
          right: 0,
          left: 0,
          child: Image.asset(Assets.assetsImagesWeatherBgShadow),
        ),
        Positioned(
          bottom: 100,
          right: 0,
          left: 100,
          child: Image.asset(Assets.assetsImagesWeatherBgShadow),
        ),
        Positioned(
          top: 66,
          left: 16,
          right: 16,
          child: SingleChildScrollView(
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
                    const Spacer(),
                    SvgPicture.asset(Assets.assetsImagesAccessoryIcon),
                  ],
                ),
                const SizedBox(height: 16),
                const CustomSearchBar(),
                const SizedBox(height: 32),
                const WeatherCitiesItem(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
