import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';

class SegementedControl extends StatelessWidget {
  const SegementedControl({
    super.key,
    this.isHourlySelected = true,
    this.onHourlyForecastTap,
    this.onWeeklyForecastTap,
  });

  final bool isHourlySelected;
  final void Function()? onHourlyForecastTap;
  final void Function()? onWeeklyForecastTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onHourlyForecastTap,
            child: Text(
              'Hourly Forecast',
              style: AppTextStyles.semibold15(context).copyWith(
                color: isHourlySelected
                    ? AppColors.darkPrimary
                    : AppColors.darkSecondary,
              ),
            ),
          ),
          GestureDetector(
            onTap: onWeeklyForecastTap,
            child: Text(
              'Weekly Forecast',
              style: AppTextStyles.semibold15(context).copyWith(
                color: isHourlySelected
                    ? AppColors.darkSecondary
                    : AppColors.darkPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
