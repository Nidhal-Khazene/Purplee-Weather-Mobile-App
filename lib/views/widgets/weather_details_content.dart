import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:purplee/core/utils/app_text_styles.dart';
import 'package:purplee/views/widgets/weather_cards/weather_card.dart';

class WeatherDetailsContent extends StatelessWidget {
  const WeatherDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        children: [
          _buildAirQualityCard(context),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildUvIndexCard(context)),
              const SizedBox(width: 12),
              Expanded(child: _buildSunriseCard(context)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildWindCard(context)),
              const SizedBox(width: 12),
              Expanded(child: _buildRainfallCard(context)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildFeelsLikeCard(context)),
              const SizedBox(width: 12),
              Expanded(child: _buildHumidityCard(context)),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: _buildVisibilityCard(context)),
              const SizedBox(width: 12),
              Expanded(child: _buildPressureCard(context)),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildAirQualityCard(BuildContext context) {
    return WeatherCard(
      icon: Icons.blur_on,
      title: 'Air Quality',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '3-Low Health Risk',
            style: AppTextStyles.regular20(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 16),
          const GradientSlider(
            value: 0.15,
            colors: [Color(0xFF3658B1), Color(0xFFC159EC), Color(0xFFF7CBFD)],
          ),
          const SizedBox(height: 16),
          Divider(color: Colors.white.withValues(alpha: 0.1)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'See more',
                style: AppTextStyles.regular17(
                  context,
                ).copyWith(color: Colors.white),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.white.withValues(alpha: 0.5),
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUvIndexCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: Icons.light_mode_outlined,
      title: 'UV Index',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '4',
            style: AppTextStyles.regular34(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          Text(
            'Moderate',
            style: AppTextStyles.regular20(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          const GradientSlider(
            value: 0.4,
            colors: [Color(0xFF3658B1), Color(0xFFC159EC)],
          ),
        ],
      ),
    );
  }

  Widget _buildSunriseCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: CupertinoIcons.sunrise,
      title: 'Sunrise',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '5:28 AM',
            style: AppTextStyles.regular34(context).copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 26,
            ),
          ),
          const Spacer(),
          SizedBox(
            height: 40,
            width: double.infinity,
            child: CustomPaint(painter: SunrisePainter()),
          ),
          const Spacer(),
          Text(
            'Sunset: 7:25PM',
            style: AppTextStyles.regular13(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildWindCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: CupertinoIcons.wind,
      title: 'Wind',
      child: Center(
        child: SizedBox(
          width: 90,
          height: 90,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(size: const Size(90, 90), painter: CompassPainter()),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '9.7',
                    style: AppTextStyles.regular20(context).copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'km/h',
                    style: AppTextStyles.regular13(
                      context,
                    ).copyWith(color: Colors.white.withValues(alpha: 0.7)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRainfallCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: CupertinoIcons.drop,
      title: 'Rainfall',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '1.8 mm',
            style: AppTextStyles.regular34(context).copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 26,
            ),
          ),
          Text(
            'in last hour',
            style: AppTextStyles.regular13(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            '1.2 mm expected in next 24h.',
            style: AppTextStyles.regular13(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildFeelsLikeCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: CupertinoIcons.thermometer,
      title: 'Feels Like',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '19°',
            style: AppTextStyles.regular34(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            'Similar to the actual temperature.',
            style: AppTextStyles.regular13(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildHumidityCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: Icons.water_drop_outlined,
      title: 'Humidity',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '90%',
            style: AppTextStyles.regular34(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            'The dew point is 17 right now.',
            style: AppTextStyles.regular13(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildVisibilityCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: Icons.remove_red_eye_outlined,
      title: 'Visibility',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '8 km',
            style: AppTextStyles.regular34(
              context,
            ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            'Similar to the actual temperature.',
            style: AppTextStyles.regular13(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildPressureCard(BuildContext context) {
    return WeatherCard(
      height: 170,
      icon: CupertinoIcons.gauge,
      title: 'Pressure',
      child: Center(
        child: SizedBox(
          width: 90,
          height: 90,
          child: CustomPaint(painter: GaugePainter()),
        ),
      ),
    );
  }
}

class GradientSlider extends StatelessWidget {
  final double value; // 0.0 to 1.0
  final List<Color> colors;

  const GradientSlider({super.key, required this.value, required this.colors});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 4,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                gradient: LinearGradient(colors: colors),
              ),
            ),
            Positioned(
              left: (constraints.maxWidth - 8) * value,
              child: Container(
                height: 8,
                width: 8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 2)],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SunrisePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint linePaint = Paint()
      ..color = const Color(0xFF8B9EE4).withValues(alpha: 0.5)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path = Path();
    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width / 2,
      size.height * -0.3,
      size.width,
      size.height * 0.7,
    );

    canvas.drawPath(path, linePaint);

    // Horizon line
    Paint horizonPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    canvas.drawLine(
      Offset(0, size.height * 0.7),
      Offset(size.width, size.height * 0.7),
      horizonPaint,
    );

    // Sun dot
    Offset sunPos = _getBezierPoint(
      0.15,
      Offset(0, size.height * 0.7),
      Offset(size.width / 2, size.height * -0.3),
      Offset(size.width, size.height * 0.7),
    );

    Paint dotPaint = Paint()..color = Colors.white;
    canvas.drawCircle(sunPos, 4, dotPaint);

    Paint glowPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
    canvas.drawCircle(sunPos, 6, glowPaint);
  }

  Offset _getBezierPoint(double t, Offset p0, Offset p1, Offset p2) {
    double x =
        (1 - t) * (1 - t) * p0.dx + 2 * (1 - t) * t * p1.dx + t * t * p2.dx;
    double y =
        (1 - t) * (1 - t) * p0.dy + 2 * (1 - t) * t * p1.dy + t * t * p2.dy;
    return Offset(x, y);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CompassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    Paint tickPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.2)
      ..strokeWidth = 1;

    for (int i = 0; i < 60; i++) {
      double angle = i * 6 * math.pi / 180;
      double tickLength = i % 15 == 0 ? 0 : (i % 5 == 0 ? 5 : 3);
      if (tickLength > 0) {
        Offset p1 = Offset(
          center.dx + (radius - tickLength) * math.cos(angle),
          center.dy + (radius - tickLength) * math.sin(angle),
        );
        Offset p2 = Offset(
          center.dx + radius * math.cos(angle),
          center.dy + radius * math.sin(angle),
        );
        canvas.drawLine(p1, p2, tickPaint);
      }
    }

    _drawText(canvas, 'N', Offset(center.dx, center.dy - radius + 8));
    _drawText(canvas, 'S', Offset(center.dx, center.dy + radius - 8));
    _drawText(canvas, 'E', Offset(center.dx + radius - 8, center.dy));
    _drawText(canvas, 'W', Offset(center.dx - radius + 8, center.dy));

    Paint arrowPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.8)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    // Draw arrow pointing West to East
    double arrowPadding = 12;
    canvas.drawLine(
      Offset(center.dx + radius - arrowPadding, center.dy),
      Offset(center.dx - radius + arrowPadding, center.dy),
      arrowPaint,
    );

    Path arrowHead = Path();
    arrowHead.moveTo(center.dx - radius + arrowPadding, center.dy);
    arrowHead.lineTo(center.dx - radius + arrowPadding + 6, center.dy - 3);
    arrowHead.lineTo(center.dx - radius + arrowPadding + 6, center.dy + 3);
    arrowHead.close();
    canvas.drawPath(arrowHead, Paint()..color = Colors.white.withValues(alpha: 0.8));
  }

  void _drawText(Canvas canvas, String text, Offset position) {
    TextPainter tp = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    tp.layout();
    tp.paint(
      canvas,
      Offset(position.dx - tp.width / 2, position.dy - tp.height / 2),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class GaugePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    Paint tickPaint = Paint()
      ..color = Colors.white.withValues(alpha: 0.15)
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    double startAngle = math.pi * 0.75;
    double sweepAngle = math.pi * 1.5;

    int tickCount = 40;
    for (int i = 0; i <= tickCount; i++) {
      double angle = startAngle + (sweepAngle * i / tickCount);
      Offset p1 = Offset(
        center.dx + (radius - 6) * math.cos(angle),
        center.dy + (radius - 6) * math.sin(angle),
      );
      Offset p2 = Offset(
        center.dx + radius * math.cos(angle),
        center.dy + radius * math.sin(angle),
      );
      canvas.drawLine(p1, p2, tickPaint);
    }

    double valueAngle = startAngle + (sweepAngle * 0.15);
    Paint thumbPaint = Paint()..color = Colors.white;
    canvas.drawCircle(
      Offset(
        center.dx + (radius - 3) * math.cos(valueAngle),
        center.dy + (radius - 3) * math.sin(valueAngle),
      ),
      4,
      thumbPaint,
    );

    // Thumb line
    Paint thumbLine = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      Offset(
        center.dx + (radius - 12) * math.cos(valueAngle),
        center.dy + (radius - 12) * math.sin(valueAngle),
      ),
      Offset(
        center.dx + (radius - 3) * math.cos(valueAngle),
        center.dy + (radius - 3) * math.sin(valueAngle),
      ),
      thumbLine,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
