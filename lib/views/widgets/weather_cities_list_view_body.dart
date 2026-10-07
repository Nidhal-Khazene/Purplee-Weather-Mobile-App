import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/models/weather_city_model.dart';
import 'package:purplee/shared/widgets/custom_search_bar.dart';
import 'package:purplee/views/widgets/weather_cities_item.dart';

class WeatherCitiesListViewBody extends StatelessWidget {
  const WeatherCitiesListViewBody({super.key});

  static const List<WeatherCityModel> cities = [
    WeatherCityModel(
      temperature: '19',
      highTemp: '24',
      lowTemp: '18',
      location: 'Montreal, Canada',
      weatherState: 'Mid Rain',
      image: Assets.assetsImagesMoonCloudMidRainBig,
    ),
    WeatherCityModel(
      temperature: '22',
      highTemp: '28',
      lowTemp: '16',
      location: 'Tennessee, USA',
      weatherState: 'Tornado',
      image: Assets.assetsImagesTornadoBig,
    ),
    WeatherCityModel(
      temperature: '20',
      highTemp: '21',
      lowTemp: '-19',
      location: 'Toronto, Canada',
      weatherState: 'Fast Wind',
      image: Assets.assetsImagesMoonCloudFastWindBig,
    ),
    WeatherCityModel(
      temperature: '13',
      highTemp: '16',
      lowTemp: '8',
      location: 'Tokyo, Japon',
      weatherState: 'Showers',
      image: Assets.assetsImagesSunCloudAngledRainBig,
    ),

    WeatherCityModel(
      temperature: "19",
      highTemp: "26",
      lowTemp: "18",
      location: "Montreal, Canada",
      weatherState: "Mid Rain",
      image: Assets.assetsImagesMoonCloudMidRainBig,
    ),
    WeatherCityModel(
      temperature: "29",
      highTemp: "32",
      lowTemp: "16",
      location: "New York, USA",
      weatherState: "Tornado",
      image: Assets.assetsImagesTornadoBig,
    ),
  ];

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
          bottom: 0,
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
                      style: AppTextStyles.regular28(context).copyWith(
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
                ...cities.map(
                  (city) => Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: WeatherCitiesItem(weatherCityModel: city),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
