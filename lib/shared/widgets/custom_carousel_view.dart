import 'package:flutter/material.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/models/hourly_forecast_model.dart';
import 'package:purplee/shared/widgets/weather_carousel_item.dart';

class CustomCarouselView extends StatefulWidget {
  const CustomCarouselView({
    super.key,
    this.items,
    this.initialSelectedIndex = 1,
    this.onItemSelected,
  });

  final List<HourlyForecastModel>? items;
  final int initialSelectedIndex;
  final ValueChanged<int>? onItemSelected;

  static const List<HourlyForecastModel> defaultForecasts = [
    HourlyForecastModel(
      time: '12 AM',
      icon: Assets.assetsImagesMoonCloudMidRain,
      chanceOfRain: '30%',
      temperature: '19°',
    ),
    HourlyForecastModel(
      time: 'Now',
      icon: Assets.assetsImagesMoonCloudMidRain,
      temperature: '19°',
    ),
    HourlyForecastModel(
      time: '2 AM',
      icon: Assets.assetsImagesMoonCloudFastWind,
      temperature: '18°',
    ),
    HourlyForecastModel(
      time: '3 AM',
      icon: Assets.assetsImagesMoonCloudMidRain,
      temperature: '19°',
    ),
    HourlyForecastModel(
      time: '4 AM',
      icon: Assets.assetsImagesMoonCloudMidRain,
      temperature: '19°',
    ),
    HourlyForecastModel(
      time: '5 AM',
      icon: Assets.assetsImagesMoonCloudMidRain,
      temperature: '19°',
    ),
  ];

  @override
  State<CustomCarouselView> createState() => _CustomCarouselViewState();
}

class _CustomCarouselViewState extends State<CustomCarouselView> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final forecastList = widget.items ?? CustomCarouselView.defaultForecasts;

    return AspectRatio(
      aspectRatio: 2.1,
      child: CarouselView(
        itemExtent: 70,
        shrinkExtent: 70,
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onTap: (index) {
          setState(() => _selectedIndex = index);
          widget.onItemSelected?.call(index);
        },
        children: List.generate(
          forecastList.length,
          (index) {
            final item = forecastList[index];
            return WeatherCarouselItem(
              time: item.time,
              icon: item.icon,
              temperature: item.temperature,
              chanceOfRain: item.chanceOfRain,
              isSelected: _selectedIndex == index,
            );
          },
        ),
      ),
    );
  }
}
