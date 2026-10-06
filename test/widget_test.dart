import 'package:flutter_test/flutter_test.dart';
import 'package:purplee/main.dart';
import 'package:purplee/shared/widgets/custom_carousel_view.dart';
import 'package:purplee/shared/widgets/weather_carousel_item.dart';

void main() {
  testWidgets('App renders HomeView with SegmentedControl and CustomCarouselView',
      (WidgetTester tester) async {
    await tester.pumpWidget(const Purplee());
    await tester.pumpAndSettle();

    expect(find.text('Hourly Forecast'), findsOneWidget);
    expect(find.text('Weekly Forecast'), findsOneWidget);
    expect(find.byType(CustomCarouselView), findsOneWidget);

    expect(find.text('12 AM'), findsOneWidget);
    expect(find.text('Now'), findsOneWidget);
    expect(find.text('30%'), findsOneWidget);

    // Tap on '12 AM' to select it
    await tester.tap(find.text('12 AM'), warnIfMissed: false);
    await tester.pumpAndSettle();

    // Verify first item is now selected
    final items = tester.widgetList<WeatherCarouselItem>(find.byType(WeatherCarouselItem)).toList();
    expect(items.first.isSelected, isTrue);
  });
}

