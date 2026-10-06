import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';

class SegementedControl extends StatelessWidget {
  const SegementedControl({
    super.key,
    this.onHourlyForecastTap,
    this.onWeeklyForecastTap,
  });

  final void Function()? onHourlyForecastTap;
  final void Function()? onWeeklyForecastTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: onHourlyForecastTap,
          child: Text(
            'Hourly Forecast',
            style: AppTextStyles.semibold15.copyWith(
              color: AppColors.darkSecondary,
              height: 1.33,
              letterSpacing: -0.30,
            ),
          ),
        ),
        GestureDetector(
          onTap: onWeeklyForecastTap,
          child: Text(
            'Weekly Forecast',
            style: AppTextStyles.semibold15.copyWith(
              color: AppColors.darkSecondary,
              height: 1.33,
              letterSpacing: -0.30,
            ),
          ),
        ),
      ],
    );
  }
}
