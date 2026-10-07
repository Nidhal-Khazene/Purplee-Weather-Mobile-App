import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/models/weather_city_model.dart';

class WeatherCitiesItem extends StatelessWidget {
  const WeatherCitiesItem({super.key, required this.weatherCityModel});

  final WeatherCityModel weatherCityModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 7,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                Assets.assetsImagesWeatherRectangleItem,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${weatherCityModel.temperature}°',
                    style: AppTextStyles.regular64.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'H:${weatherCityModel.highTemp}°  L:${weatherCityModel.lowTemp}°\n',
                          style: AppTextStyles.regular13.copyWith(
                            color: AppColors.darkSecondary,
                          ),
                        ),
                        TextSpan(
                          text: weatherCityModel.location,
                          style: AppTextStyles.regular17.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -16,
              right: 16,
              child: Image.asset(
                weatherCityModel.image,
                width: 160,
                height: 160,
              ),
            ),
            Positioned(
              bottom: 24,
              right: 42,
              child: Text(
                weatherCityModel.weatherState,
                textAlign: TextAlign.right,
                style: AppTextStyles.regular13.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
