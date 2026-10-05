import 'package:flutter/material.dart';
import 'package:purplee/features/home/presentation/views/widgets/weather_details_view_body.dart';

class WeatherDetailsView extends StatelessWidget {
  const WeatherDetailsView({super.key});
  static const routeName = '/weather-details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: WeatherDetailsViewBody());
  }
}
