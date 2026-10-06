import 'package:flutter/material.dart';
import 'package:purplee/core/routes/on_generate_route.dart';
import 'package:purplee/core/utils/app_theme.dart';
import 'package:purplee/views/home_view.dart';

void main() {
  runApp(const Purplee());
}

class Purplee extends StatelessWidget {
  const Purplee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purplee',
      theme: AppTheme.primary,
      onGenerateRoute: onGenerateRoutes,
      initialRoute: HomeView.routeName,
    );
  }
}
