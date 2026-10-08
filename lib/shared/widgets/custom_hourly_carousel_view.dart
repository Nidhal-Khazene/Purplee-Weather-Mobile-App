import 'package:flutter/material.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/models/hourly_forecast_model.dart';
import 'package:purplee/shared/widgets/hourly_weather_carousel_item.dart';

class CustomHourlyCarouselView extends StatefulWidget {
  const CustomHourlyCarouselView({
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
  State<CustomHourlyCarouselView> createState() =>
      _CustomHourlyCarouselViewState();
}

class _CustomHourlyCarouselViewState extends State<CustomHourlyCarouselView> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final forecastList =
        widget.items ?? CustomHourlyCarouselView.defaultForecasts;

    return AspectRatio(
      aspectRatio: 2.1,
      child: CarouselView(
        itemExtent: 80,
        shrinkExtent: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onTap: (index) {
          setState(() => _selectedIndex = index);
          widget.onItemSelected?.call(index);
        },
        children: List.generate(forecastList.length, (index) {
          final item = forecastList[index];
          return HourlyWeatherCarouselItem(
            time: item.time,
            icon: item.icon,
            temperature: item.temperature,
            chanceOfRain: item.chanceOfRain,
            isSelected: _selectedIndex == index,
          );
        }),
      ),
    );
  }
}
