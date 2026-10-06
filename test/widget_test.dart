import 'package:flutter_test/flutter_test.dart';
import 'package:purplee/main.dart';
import 'package:purplee/shared/widgets/custom_hourly_carousel_view.dart';
import 'package:purplee/shared/widgets/custom_weekly_carousel_view.dart';
import 'package:purplee/shared/widgets/hourly_weather_carousel_item.dart';
import 'package:purplee/shared/widgets/weekly_weather_carousel_item.dart';

void main() {
  testWidgets(
    'App renders HomeView with SegmentedControl and CustomCarouselView',
    (WidgetTester tester) async {
      await tester.pumpWidget(const Purplee());
      await tester.pumpAndSettle();

      expect(find.text('Hourly Forecast'), findsOneWidget);
      expect(find.text('Weekly Forecast'), findsOneWidget);
      expect(find.byType(CustomHourlyCarouselView), findsOneWidget);

      expect(find.text('12 AM'), findsOneWidget);
      expect(find.text('Now'), findsOneWidget);
      expect(find.text('30%'), findsOneWidget);

      // Tap on '12 AM' to select it
      await tester.tap(find.text('12 AM'), warnIfMissed: false);
      await tester.pumpAndSettle();

      // Verify first item is now selected
      final items = tester
          .widgetList<HourlyWeatherCarouselItem>(
            find.byType(HourlyWeatherCarouselItem),
          )
          .toList();
      expect(items.first.isSelected, isTrue);

      // Tap on 'Weekly Forecast'
      await tester.tap(find.text('Weekly Forecast'), warnIfMissed: false);
      await tester.pumpAndSettle();

      expect(find.byType(CustomWeeklyCarouselView), findsOneWidget);
      expect(find.text('MON'), findsOneWidget);
      expect(find.text('TUE'), findsOneWidget);
      expect(find.text('WEBS'), findsOneWidget);

      final weeklyItems = tester
          .widgetList<WeeklyWeatherCarouselItem>(
            find.byType(WeeklyWeatherCarouselItem),
          )
          .toList();
      expect(weeklyItems.first.isSelected, isTrue);

      // Tap on 'TUE' to select it
      await tester.tap(find.text('TUE'), warnIfMissed: false);
      await tester.pumpAndSettle();

      final updatedWeeklyItems = tester
          .widgetList<WeeklyWeatherCarouselItem>(
            find.byType(WeeklyWeatherCarouselItem),
          )
          .toList();
      expect(updatedWeeklyItems[1].isSelected, isTrue);
    },
  );
}
