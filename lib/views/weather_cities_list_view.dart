import 'package:flutter/material.dart';
import 'package:purplee/views/widgets/weather_cities_list_view_body.dart';

class WeatherCitiesListView extends StatelessWidget {
  const WeatherCitiesListView({super.key});
  static const routeName = '/weather-cities-list';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: WeatherCitiesListViewBody());
  }
}
