import 'package:flutter/material.dart';
import 'package:purplee/features/home/presentation/views/home_view.dart';
import 'package:purplee/features/home/presentation/views/weather_details_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case WeatherDetailsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const WeatherDetailsView(),
      );
    default:
      return null;
  }
}
