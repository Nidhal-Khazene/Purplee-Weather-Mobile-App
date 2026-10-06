class HourlyForecastModel {
  final String time;
  final String icon;
  final String temperature;
  final String? chanceOfRain;

  const HourlyForecastModel({
    required this.time,
    required this.icon,
    required this.temperature,
    this.chanceOfRain,
  });
}
