import 'package:flutter/material.dart';
import 'package:purplee/views/home_view.dart';
import 'package:purplee/views/weather_cities_list_view.dart';
import 'package:purplee/views/weather_details_view.dart';

Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());
    case WeatherDetailsView.routeName:
      return PageRouteBuilder<void>(
        settings: settings,
        transitionDuration: const Duration(milliseconds: 1200),
        reverseTransitionDuration: const Duration(milliseconds: 600),
        pageBuilder: (context, animation, secondaryAnimation) =>
            const WeatherDetailsView(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final position = Tween<Offset>(
            begin: const Offset(0, 1),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeOutCubic)).animate(animation);

          return SlideTransition(position: position, child: child);
        },
      );
    case WeatherCitiesListView.routeName:
      return MaterialPageRoute(
        builder: (context) => const WeatherCitiesListView(),
      );
    default:
      return null;
  }
}
