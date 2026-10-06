class WeeklyForecastModel {
  final String day;
  final String icon;
  final String temperature;
  final String? chanceOfRain;

  const WeeklyForecastModel({
    required this.day,
    required this.icon,
    required this.temperature,
    this.chanceOfRain,
  });
}
