import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/models/weather_city_model.dart';

class WeatherCitiesItem extends StatefulWidget {
  const WeatherCitiesItem({super.key, required this.weatherCityModel});

  final WeatherCityModel weatherCityModel;

  @override
  State<WeatherCitiesItem> createState() => _WeatherCitiesItemState();
}

class _WeatherCitiesItemState extends State<WeatherCitiesItem> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isPressed = true),
      onTapUp: (_) => setState(() => isPressed = false),
      onTapCancel: () => setState(() => isPressed = false),
      child: AspectRatio(
        aspectRatio: 16 / 7,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 200),
                  scale: isPressed ? 0.95 : 1.0,
                  curve: Curves.easeInOut,
                  child: SvgPicture.asset(
                    Assets.assetsImagesWeatherRectangleItem,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                left: 16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${widget.weatherCityModel.temperature}°',
                      style: AppTextStyles.regular64.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text:
                                'H:${widget.weatherCityModel.highTemp}°  L:${widget.weatherCityModel.lowTemp}°\n',
                            style: AppTextStyles.regular13.copyWith(
                              color: AppColors.darkSecondary,
                            ),
                          ),
                          TextSpan(
                            text: widget.weatherCityModel.location,
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
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                top: isPressed ? -30 : -16,
                right: isPressed ? 24 : 16,
                child: Image.asset(
                  widget.weatherCityModel.image,
                  width: 160,
                  height: 160,
                ),
              ),
              Positioned(
                bottom: 24,
                right: 42,
                child: Text(
                  widget.weatherCityModel.weatherState,
                  textAlign: TextAlign.right,
                  style: AppTextStyles.regular13.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
