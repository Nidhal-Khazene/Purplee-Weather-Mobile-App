import 'package:flutter/material.dart';
import 'package:purplee/views/home_view.dart';
import 'package:purplee/views/weather_cities_list_view.dart';
import 'package:purplee/views/weather_details_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case WeatherDetailsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const WeatherDetailsView(),
      );
    case WeatherCitiesListView.routeName:
      return MaterialPageRoute(
        builder: (context) => const WeatherCitiesListView(),
      );
    default:
      return null;
  }
}
