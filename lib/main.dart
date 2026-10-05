import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_theme.dart';

void main() {
  runApp(const Purplee());
}

class Purplee extends StatelessWidget {
  const Purplee({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Purplee',
      theme: AppTheme.primary,
      home: const Scaffold(body: Center(child: Text('Hello, Purplee!'))),
    );
  }
}
