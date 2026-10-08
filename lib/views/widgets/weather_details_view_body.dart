import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';
import 'package:purplee/shared/widgets/custom_hourly_carousel_view.dart';
import 'package:purplee/shared/widgets/custom_weekly_carousel_view.dart';
import 'package:purplee/views/widgets/segmented_control.dart';
import 'package:purplee/views/widgets/weather_details_content.dart';

class WeatherDetailsViewBody extends StatefulWidget {
  const WeatherDetailsViewBody({super.key});

  @override
  State<WeatherDetailsViewBody> createState() => _WeatherDetailsViewBodyState();
}

class _WeatherDetailsViewBodyState extends State<WeatherDetailsViewBody> {
  bool isHourlySelected = true;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(Assets.assetsImagesWeatherBg, fit: BoxFit.cover),
        ),
        Positioned(
          top: 24,
          right: 0,
          left: 0,
          child: Image.asset(Assets.assetsImagesWeatherBgShadow),
        ),
        Positioned(
          bottom: 20,
          right: -120,
          left: 0,
          child: Image.asset(Assets.assetsImagesWeatherBgShadow),
        ),
        Positioned(
          top: 66,
          left: 0,
          right: 0,
          bottom: 0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  'Montreal',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.regular34(
                    context,
                  ).copyWith(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '19°',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semibold18(
                        context,
                      ).copyWith(color: AppColors.darkSecondary),
                    ),
                    Text(
                      '| Mostly Clear ',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semibold18(
                        context,
                      ).copyWith(color: AppColors.darkSecondary),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Stack(
                  children: [
                    Image.asset(Assets.assetsImagesWeatherRecatangle),
                    Positioned(
                      top: 20,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: MediaQuery.of(context).size.width * 0.07,
                      child: SegementedControl(
                        isHourlySelected: isHourlySelected,
                        onHourlyForecastTap: () {
                          setState(() {
                            isHourlySelected = true;
                          });
                        },
                        onWeeklyForecastTap: () {
                          setState(() {
                            isHourlySelected = false;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: MediaQuery.of(context).size.width * 0.07,
                      right: 0,
                      child: isHourlySelected
                          ? const CustomHourlyCarouselView()
                          : const CustomWeeklyCarouselView(),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -100),
                  child: const WeatherDetailsContent(),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 64,
          left: 16,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Transform.rotate(
              angle: -math.pi / 2,
              child: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
