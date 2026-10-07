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
        children: [
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onHourlyForecastTap,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Hourly Forecast',
                    style: AppTextStyles.semibold15(context).copyWith(
                      color: isHourlySelected
                          ? AppColors.darkPrimary
                          : AppColors.darkSecondary,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: onWeeklyForecastTap,
              child: Align(
                alignment: Alignment.centerRight,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Weekly Forecast',
                    style: AppTextStyles.semibold15(context).copyWith(
                      color: isHourlySelected
                          ? AppColors.darkSecondary
                          : AppColors.darkPrimary,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
