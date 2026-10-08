import 'package:flutter/material.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/models/weekly_forecast_model.dart';
import 'package:purplee/shared/widgets/weekly_weather_carousel_item.dart';

class CustomWeeklyCarouselView extends StatefulWidget {
  const CustomWeeklyCarouselView({
    super.key,
    this.items,
    this.initialSelectedIndex = 0,
    this.onItemSelected,
  });

  final List<WeeklyForecastModel>? items;
  final int initialSelectedIndex;
  final ValueChanged<int>? onItemSelected;

  static const List<WeeklyForecastModel> defaultForecasts = [
    WeeklyForecastModel(
      day: 'MON',
      icon: Assets.assetsImagesSunCloudMidRain,
      chanceOfRain: '30%',
      temperature: '20°',
    ),
    WeeklyForecastModel(
      day: 'TUE',
      icon: Assets.assetsImagesSunCloudMidRain,
      temperature: '21°',
    ),
    WeeklyForecastModel(
      day: 'WEBS',
      icon: Assets.assetsImagesSunCloudAngledRain,
      chanceOfRain: '100%',
      temperature: '18°',
    ),
    WeeklyForecastModel(
      day: 'THU',
      icon: Assets.assetsImagesSunCloudAngledRain,
      chanceOfRain: '50%',
      temperature: '20°',
    ),
    WeeklyForecastModel(
      day: 'FRI',
      icon: Assets.assetsImagesSunCloudMidRain,
      temperature: '22°',
    ),
    WeeklyForecastModel(
      day: 'SAT',
      icon: Assets.assetsImagesSunCloudMidRain,
      temperature: '21°',
    ),
    WeeklyForecastModel(
      day: 'SUN',
      icon: Assets.assetsImagesSunCloudMidRain,
      temperature: '20°',
    ),
  ];

  @override
  State<CustomWeeklyCarouselView> createState() =>
      _CustomWeeklyCarouselViewState();
}

class _CustomWeeklyCarouselViewState extends State<CustomWeeklyCarouselView> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final forecastList =
        widget.items ?? CustomWeeklyCarouselView.defaultForecasts;

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
          return WeeklyWeatherCarouselItem(
            day: item.day,
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
