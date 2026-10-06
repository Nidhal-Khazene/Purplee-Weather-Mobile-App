import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';

class WeeklyWeatherCarouselItem extends StatelessWidget {
  const WeeklyWeatherCarouselItem({
    super.key,
    required this.day,
    required this.icon,
    required this.temperature,
    this.chanceOfRain,
    this.isSelected = false,
  });

  final String day;
  final String icon;
  final String temperature;
  final String? chanceOfRain;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.weatherSolidPurple
            : const Color(0x3348319D),
        gradient: isSelected ? AppColors.weatherLinearTwo : null,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: isSelected
              ? Colors.white.withValues(alpha: 0.6)
              : Colors.white.withValues(alpha: 0.2),
          width: 1,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  color: AppColors.weatherSolidPurple.withValues(alpha: 0.5),
                  blurRadius: 16,
                  offset: const Offset(0, 8),
                ),
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.25),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ]
            : [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  day,
                  maxLines: 1,
                  style: AppTextStyles.semibold15.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildWeatherIcon(icon),
              if (chanceOfRain != null) ...[
                const SizedBox(height: 1),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    chanceOfRain!,
                    maxLines: 1,
                    style: AppTextStyles.semibold13.copyWith(
                      color: const Color(0xFF40CBD8),
                    ),
                  ),
                ),
              ] else ...[
                const SizedBox(height: 18),
              ],
            ],
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              temperature,
              maxLines: 1,
              style: AppTextStyles.regular20.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherIcon(String assetPath) {
    if (assetPath.toLowerCase().endsWith('.svg')) {
      return Image.asset(assetPath, width: 32, height: 32);
    }
    return Image.asset(assetPath, width: 32, height: 32, fit: BoxFit.contain);
  }
}
