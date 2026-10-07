import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:purplee/core/utils/app_colors.dart';
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/core/utils/assets.dart';

class WeatherCitiesItem extends StatelessWidget {
  const WeatherCitiesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 7,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned.fill(
              child: SvgPicture.asset(
                Assets.assetsImagesWeatherRectangleItem,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '19°',
                    style: AppTextStyles.regular64.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'H:24°  L:18°\n',
                          style: AppTextStyles.regular13.copyWith(
                            color: AppColors.darkSecondary,
                          ),
                        ),
                        TextSpan(
                          text: 'Montreal, Canada',
                          style: AppTextStyles.regular17.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Image.asset(
                Assets.assetsImagesMoonCloudMidRain,
                width: 160,
                height: 160,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
